//
//  Exercice_2.swift
//  swiftExercice
//
//  Created by daniel on 17/10/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation

func cleanHobbits(arr:[String])->(Any){
    let firstElem=((arr.first)!)
    let lastElem=((arr.last)!)
    var Arrmodif=arr
    Arrmodif.removeFirst()
    Arrmodif.removeLast()
    
    let totalIndices = Arrmodif.count - 1 // We get this value one time instead of once per iteration.

    var reversedNames = [String]()

    for arrayIndex in 0...totalIndices {
        reversedNames.append(Arrmodif[totalIndices - arrayIndex])
    }
     let count=reversedNames.count
    
    
    
    let result=(firstElem,lastElem,reversedNames,count)
    return result
}
