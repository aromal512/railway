package com.faith.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.faith.model.Reservation;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
		
		@RequestMapping("/bookingform")
		public String bookingForm(Model model) {
		Reservation res = new Reservation();
		model.addAttribute("reservation", res);
		System.out.println("BOOKING-FORM");
		return "reservation-page";
		}
		
		@RequestMapping("/submitForm")
		public String submitForm(@ModelAttribute("reservation") Reservation res) {
		System.out.println("SUBMIT-FORM");
		return "confirmation-page";
		}

}
