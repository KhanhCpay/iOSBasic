//
//  Sinh Vien.swift
//  iOS Basic
//
//  Created by Admin on 14/01/2021.
//

import Foundation
class Student  {
    var name: String
    var age: Int
    var address: String
    var phone: Int
    
    
    init(name: String, age: Int,address: String, phone: Int) {
        self.name = name
        self.age = age
        self.address = address
        self.phone = phone
    }
    
   
    
    func about() -> String {
        return """
            \(name) Năm nay \(age) tuổi, Quê ở \(address), Điện thoại \(phone)
            """
    }
    
    
    
}
