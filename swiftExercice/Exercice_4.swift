//
//  Exercice_4.swift
//  swiftExercice
//
//  Created by daniel on 28/11/2019.
//  Copyright © 2019 daniel. All rights reserved.
//

import Foundation


class ApiManager{
    var baseUrl: String = "http://api.randomuser.me/"
    
   
    func getRandomUser(completion: @escaping (Any) -> Void){
        print("enter fction")
        var request = URLRequest(url: URL(string: self.baseUrl)!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { data, response, err in
            print("avant le do")
            do {
                print("hey")
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [String: Any]{
                    if let results=json["results"] as? Array<Any>{
                        completion(results)
                    }
                }
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
