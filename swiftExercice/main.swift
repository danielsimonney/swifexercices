//
//  main.swift
//  swiftExercice
//
//  Created by daniel on 17/10/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation

print("Hello, World!")

print(cleanHobbits(arr:["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"]))
let str="2005-11-24"
print(str)
print(str.toDate(format: "yyyy-MM-dd"))
print("salur")
//print((Date()).getYearDifferenceFrom(date: "12/12/2011".toDate(format: "DD/MM/YYYY")))

let pers=Person(firstname: "String", lastname: "String", gender: .Female, email: "ezdzed@gmail.Com", birthdate:str.toDate(format:"yyyy-MM-dd"))

print(pers.show())

let api=ApiManager()
//api.getRandomUser(completion: { data in
//    print(data)
//})
api.getRandomUserHydratedWithPerson(completion: {data in
    print(data)
})
RunLoop.main.run()
