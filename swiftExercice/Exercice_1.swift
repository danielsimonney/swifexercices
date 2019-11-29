//
//  File.swift
//  swiftExercice
//
//  Created by daniel on 17/10/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation

func condog(str:String,prefix:Character,suffix:String)->String{
    var a=String(prefix)
    a.append(str)
    a.append(prefix)
    
   return [str,String(prefix),suffix].joined(separator: "")
}
