//
//  Bank.swift
//  2dlesson2mhomework
//
//  Created by mavluda on 2/2/23.
//

import Foundation

//Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента.
//После чего запрашивается сумма и происходит перевод денег.


class Bank{
    
    var clients = [Client]()
    
    func addClient(_ model: Client){
        clients.append(model)
    }
    
    func getInfo(_ cardNumber: Int) -> String{
        var string = "Совпадений не найдено"
        for client in clients{
            for card in client.cards{
                if card.cardNumber == cardNumber{
                    string = client.firstName + " " + client.surname
                    break
                }
            }
        }
        
        return string
    }
    
    func transfer(){
        print("Введите номер карты, с которой требуется совершить перевод")
        let sendCardNumber = readLine()!
        
        switch sendCardNumber.count{
        case 16:
            for i in clients{
                for card in i.cards{
                    if card.cardNumber == Int(sendCardNumber){
                        print(card.bankName)
                    }
                }
            }
            
        default: print("Неверный номер карты либо такой карты не существует")
        }
        
        print("Введите номер карты, на которую требуется совершить перевод")
        let receiveCardNumber = readLine()!
        
        switch receiveCardNumber.count{
        case 16: print(getInfo(Int(receiveCardNumber)!))
        default: print("Неверный номер карты либо такой карты не существует")
        }
        
        print("Введите сумму перевода")
        
        let amountToTransfer = readLine()!
        var gotMoney = false
        var sendMoney = false
        
        for clientID in 0..<clients.count{
            if clients[clientID].firstName + " " + clients[clientID].surname == getInfo(Int(sendCardNumber)!){
                for cardID in 0..<clients[clientID].cards.count{
                    if self.clients[clientID].cards[cardID].bill >= Int(amountToTransfer)!{
                        clients[clientID].cards[cardID].bill -= Int(amountToTransfer)!
                        gotMoney = true
                        break
                    }
                }
            }
        }
        
        if gotMoney{
            for clientID in 0..<clients.count {
                for cardID in 0..<clients[clientID].cards.count{
                    if clients[clientID].cards[cardID].cardNumber == Int(receiveCardNumber)!{
                        sendMoney = true
                        clients[clientID].cards[cardID].bill += Int(amountToTransfer)!
                        print("Деньги \(amountToTransfer) отправлены \(getInfo(Int(receiveCardNumber)!)) от \(getInfo(Int(sendCardNumber)!))")
                        break
                    }
                }
            }
        }else{
            print("перевод невозможен")
        }
        
    }
}
