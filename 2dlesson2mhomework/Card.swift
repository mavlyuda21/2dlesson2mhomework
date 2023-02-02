//
//  Card.swift
//  2dlesson2mhomework
//
//  Created by mavluda on 2/2/23.
//

import Foundation

//Cоздать класс Card c параметрами bankName, cardNumber и bill.

class Card{
    var bankName : String
    var cardNumber : Int
    var bill : Int
    init(bankName: String, cardNumber: Int, bill: Int) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}
