package com.example.service;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.domain.BoardVO;
import com.example.domain.BusTradeVO;
import com.example.domain.Project;
import com.example.domain.ReservationVO;
import com.example.domain.TerminalVO;
import com.example.mapper_oracle.BoardMapper;
import com.example.mapper_oracle.BusTradeMapper;
import com.example.mapper_oracle.ReservationMapper;
import com.example.mapper_oracle.TerminalMapper;
import com.example.mapper_oracle.UserMapper;

@Service
public class TradeService {

	@Autowired
	UserMapper user;

	@Autowired
	BusTradeMapper trade;

	@Autowired
	BoardMapper board;

	@Autowired
	ReservationMapper reservation;

	@Autowired
	TerminalMapper terminal;

	@Transactional
	public void trade(BusTradeVO vo) {

		BoardVO bvo = board.read(vo.getSeq_board());

		String sender = vo.getSend_user_id();
		String receiver = vo.getReceive_user_id();
		trade.delete(vo.getSeq_board());

		String[] sendInfo = vo.getSend_ticket().split(" ");
		String[] receiveInfo = vo.getReceive_ticket().split(" ");

		List<TerminalVO> terminalList = terminal.parents();
		TerminalVO tmn = null;
		for (int i = 0; i < terminalList.size(); i++) {
			tmn = terminalList.get(i);
			if (tmn.getTerminal_name().split(" ")[1].equals(sendInfo[0])) {
				sendInfo[0] = tmn.getTerminal_code();
			}
			if (tmn.getTerminal_name().split(" ")[1].equals(sendInfo[1])) {
				sendInfo[1] = tmn.getTerminal_code();
			}
		}
		for (int i = 0; i < terminalList.size(); i++) {
			tmn = terminalList.get(i);
			if (tmn.getTerminal_name().split(" ")[1].equals(receiveInfo[0])) {
				receiveInfo[0] = tmn.getTerminal_code();
			}
			if (tmn.getTerminal_name().split(" ")[1].equals(receiveInfo[1])) {
				receiveInfo[1] = tmn.getTerminal_code();
			}
		}

		ReservationVO senderVO = new ReservationVO();
		ReservationVO receiverVO = new ReservationVO();

		senderVO.setUser_id(sender);
		senderVO.setStart_terminal_code(sendInfo[0]);
		senderVO.setDest_terminal_code(sendInfo[1]);
		senderVO.setSeat_num(Integer.parseInt(sendInfo[2]));
		senderVO.setReser_go(sendInfo[3] + " " + sendInfo[4]);
		senderVO = reservation.tradeRead(senderVO);

		receiverVO.setUser_id(receiver);
		receiverVO.setStart_terminal_code(receiveInfo[0]);
		receiverVO.setDest_terminal_code(receiveInfo[1]);
		receiverVO.setSeat_num(Integer.parseInt(receiveInfo[2]));
		receiverVO.setReser_go(receiveInfo[3] + " " + receiveInfo[4]);
		receiverVO = reservation.tradeRead(receiverVO);

		senderVO.setUser_id(receiver);
		receiverVO.setUser_id(sender);

		reservation.trade(senderVO);
		reservation.trade(receiverVO);

		bvo.setTitle("[교환 완료] " + bvo.getTitle());
		board.update(bvo);
	}

	@Transactional
	public List<ReservationVO> makeTradeList(String user_id, List<ReservationVO> list) {
		List<BoardVO> removeList = board.myTradeList(user_id);
		String[] ticket = null;
		ReservationVO temp = null, vo = null;
		for (int i = 0; i < removeList.size(); i++) {
			ticket = removeList.get(i).getTrade().split(" ");
			temp = new ReservationVO();
			temp.setStart(ticket[0].split("-")[0]);
			temp.setDest(ticket[0].split("-")[1]);
			temp.setReser_go(ticket[1] + " " + ticket[2]);
			temp.setSeat_num(Integer.parseInt(ticket[4].replace("번", "")));
			for (int j = 0; j < list.size(); j++) {
				vo = list.get(j);
				if (check(temp, vo)) {
					list.remove(vo);
					break;
				} else {
					continue;
				}
			}
		}
		return list;
	}

	@Transactional
	public List<BusTradeVO> makeTradeList(List<BusTradeVO> list, boolean send) {
		String[] ticket = null;
		BusTradeVO temp = null;

		boolean check;
		int i = 0;
		while (true) {
			try {
				temp = list.get(i);
				ticket = send ? temp.getSend_ticket().split(" ") : temp.getReceive_ticket().split(" ");
				ticket = Arrays.copyOfRange(ticket, 4, 6);
				ticket = (ticket[0] + " " + ticket[1]).split("/");
				check = Project.isPast(Project.timeCheck(ticket), "myPage");
				if (check) {
					list.remove(i);
				} else {
					i++;
				}
			} catch (Exception e) {
				break;
			}
		}
		return list;
	}

	boolean check(ReservationVO a, ReservationVO b) {
		if (a.getStart().equals(b.getStart()) && a.getDest().equals(b.getDest())
				&& a.getReser_go().equals(b.getReser_go()) && a.getSeat_num() == b.getSeat_num()) {
			return true;
		} else {
			return false;
		}
	}
}
