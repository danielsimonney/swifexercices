//
//  Exercice_3.swift
//  swiftExercice
//
//  Created by daniel on 17/10/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation

//let string="Emir"
//
//extension String {
//    func toDate()->Date{
//        return self.da
//    }
//}


class Vehicle{
    var wheels:[Wheel]
     var color:String
    init(color: String,wheels:[Wheel]) {
        self.color=color
        self.wheels=wheels
    }
}

class Car: Vehicle {
    var seats: Int
    init(color:String,seats:Int,wheels:[Wheel]) {
        self.seats=seats
        super.init(color: color, wheels: wheels)
    }
}

class Wheel {
    let inch:Int
    init(inch:Int) {
        self.inch=inch
    }
}

class Voiture {
    var color:String
    var wheels:[Wheel]
    
    init(color: String,wheels:[Wheel]) {
        self.color=color
        self.wheels=wheels
    }
}

struct Email:CustomStringConvertible{
    var description: String{
        return self.email ?? "emir.gmail"
    }
    
    var email:String?
    
      init(email: String){
        self.email = email
    }
    func isValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self.email)
    }
}

class Existence{

    
    var birthdate:Date
    var age:Int
    init(age: Int,birthdate: Date){
        self.birthdate = birthdate
        self.age = age
    }
    func willProbablyDieSoon() -> Bool {
        return self.age > 100
           }
}


class Person: Existence {
    enum Gender :String{
        case Male = "male"
        case Female = "female"
        case Other = "other"
    }
    var gender:Gender
    var firstname:String
    var lastname:String
    var email:Email
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)){
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = Email(email:email)
        super.init(age: birthdate.date.toDate(format: birthdate.format).getYearDifferenceFrom(date:Date()), birthdate: birthdate.date.toDate(format: birthdate.format))
        
    }
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date){
        self.firstname = firstname
        self.lastname = lastname
        self.gender = gender
        self.email = Email(email:email)
        super.init(age: birthdate.getYearDifferenceFrom(date:Date()), birthdate: birthdate)
    }
    
    func show() {
            
        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")
        
        switch self.gender {
        case .Male:
            print("gender : Male")
        case .Female:
            print("gender : Female")
        case .Other:
            print("gender : Other")
        }
        
        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")
        
        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")
        
    }

    
}



extension String {
  func toDate(format: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    let date = dateFormatter.date(from: self)
    return date!
  }
}

extension Date{
    func toString(format: String) -> String {
         let dateFormatter = DateFormatter()
               dateFormatter.dateFormat = format
               let newDate: String = dateFormatter.string(from: self) // pass Date here

        
               return newDate
    }
}
extension Date{
    func getYearDifferenceFrom(date:Date) -> Int {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        let yearString = formatter.string(from: date)
        let yearcurrent = formatter.string(from: self)
        let result = (Int(yearString) ?? 0) - (Int(yearcurrent) ?? 0)
        return result
    }
}
