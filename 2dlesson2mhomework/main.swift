//
//  main.swift
//  2dlesson2mhomework
//
//  Created by mavluda on 2/2/23.
//

import Foundation


//В main cоздать объекты, заполнить данными и произвести перевод.

var bank = Bank()

bank.addClient(Client(firstName: "Nurlan", surname: "Saburov", cards: [Card(bankName: "Optima Bank", cardNumber: 4169585357109684, bill: 12000)]))
bank.addClient(Client(firstName: "Garik", surname: "Harlamov", cards: [Card(bankName: "Halyk Bank", cardNumber: 4432234567761122, bill: 143212000)]))

bank.transfer()

//Введите номер карты, с которой требуется совершить перевод
//4432234567761122
//Halyk Bank
//Введите номер карты, на которую требуется совершить перевод
//4169585357109684
//Nurlan Saburov
//Введите сумму перевода
//10000
//Деньги 10000 отправлены Nurlan Saburov от Garik Harlamov
//Program ended with exit code: 0
