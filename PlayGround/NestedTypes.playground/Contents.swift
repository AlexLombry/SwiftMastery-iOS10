//: Playground - noun: a place where people can play

import UIKit

class Email {
    
    enum EmailStatus: String
    {
        case Read
        case Unread
        case Sent = "Email Sent!"
        case Recieved
    }
    
    
    let sender: String
    let recipient: String
    let date: NSDate
    
    var status = EmailStatus.Sent
    
    var urgent = EmailPriority()
    var important = EmailPriority()
    var notImportant = EmailPriority()
    
    init(sender: String, recipient: String) {
        
        self.sender = sender
        self.recipient = recipient
        date = NSDate()
    }
    
    func emailData() -> String {
        
        return "Sent From: \(sender), Recipient: \(recipient), Time: \(date)"
    }
    
    func EmailState() -> String {
        switch status
        {
        case .Read:
            return "Email Read!"
            
        case .Unread:
            return "Email has not been read!"
            
        case .Sent:
            return status.rawValue
            
        case .Recieved:
            return "Email has been recieved"
            
        }
    }
    
    class EmailPriority
    {
        var someSpam = SpamEmail()
        
        class SpamEmail
        {
            enum DeletionTimeForSpam: Int
            {
                case deleteAfter1Day = 1
                case deleteAfter5Days = 5
                case ddeleteAfter10Days = 10
            }
            
            var delete = DeletionTimeForSpam.deleteAfter5Days
        }
    }
}

var myEmail = Email(sender: "Bill Smith", recipient: "John Mosley")
myEmail.emailData()

myEmail.EmailState()

myEmail.important.someSpam.delete




