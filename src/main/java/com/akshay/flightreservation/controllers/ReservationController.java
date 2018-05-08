package com.akshay.flightreservation.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.akshay.flightreservation.dto.ReservationRequest;
import com.akshay.flightreservation.entities.Flight;
import com.akshay.flightreservation.repos.FlightRepository;
import com.akshay.flightreservation.service.ReservationService;

@Controller
public class ReservationController {
	private static String PAYMENT_REST_URL = "http://localhost:9576/paymentgateway/payment/";
	
	@Autowired
	FlightRepository flightRepo;

	@Autowired
	ReservationService reservationService;

	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId, ModelMap modelMap) {
		Flight flight = flightRepo.findById(flightId).get();
		modelMap.addAttribute("flight", flight);
		return "completeReservation";
	}
	
	@RequestMapping(value = "/paymentMode", method = RequestMethod.POST)
	public String paymentMode(ReservationRequest request, ModelMap modelMap) {
		
		return "paymentMode";
		/*Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Reservation created successfully and the id is " + reservation.getId());
		return "reservationConfirmation";*/
	}
	
	
	@RequestMapping(value = "/paymentGate", method = RequestMethod.POST)
	public String paymentGateWay(ReservationRequest request, ModelMap modelMap) {
		
		System.out.println(request.toString());
		
		RestTemplate restTemplate = new RestTemplate();
		
		
		//String crdNum = request.getCardNumber();
		ReservationRequest reservationRequest = restTemplate.postForObject(PAYMENT_REST_URL, request,  ReservationRequest.class);
		
		
		return "paymentMode";
		/*Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Reservation created successfully and the id is " + reservation.getId());
		return "reservationConfirmation";*/
	}
	

	/*@RequestMapping(value = "/completeReservation", method = RequestMethod.POST)
	public String completeReservation(ReservationRequest request, ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(request);
		modelMap.addAttribute("msg", "Reservation created successfully and the id is " + reservation.getId());
		return "reservationConfirmation";
	}*/
}
