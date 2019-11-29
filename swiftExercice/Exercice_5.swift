//
//  Exercice_5.swift
//  swiftExercice
//
//  Created by daniel on 29/11/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation
//
extension ApiManager{
    func getRandomUserHydratedWithPerson(completion: @escaping (Person) -> Void) {
        
        getRandomUser(completion: { (data) in
            let json = data as! [[String: Any]]
            let name=json[0]["name"]as! [String: Any]
            let firstname=name["first"] as! String
            let lastname=name["last"] as! String
            let gender=json[0]["gender"] as! String
            let email=json[0]["email"] as! String
            let date=json[0]["dob"] as! [String: Any]
            let birthdate=date["date"] as! String
            let person = (Person(firstname: firstname, lastname: lastname, gender: Person.Gender(rawValue: gender)!, email: email, birthdate: birthdate.toDate(format: "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX")))
            person.show()
        })
    }
}
