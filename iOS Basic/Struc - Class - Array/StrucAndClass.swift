//
//  StrucAndClass.swift
//  iOS Basic
//
//  Created by Admin on 14/01/2021.
//

import Foundation

class Person  {
    var name: String = "Khnh"
    var age: Int = 13
    var address: String = "Hà nội"
    
    init() {
        
    }
    
    init(a: String, b: Int, c: String) {
        self.name = a
        self.age = b
        self.address = c
    }
    init(a: String, b: Int) {
        self.name = a
        self.age = b
      
    }
    
    func about() -> String {
        return "\(name) tuổi: \(age) địa chỉ: \(address)"
    }
}
struct animal {
    var name: String
    var color: String
    var chan: Int
    
    init(_ name: String, _ color: String, _ chan: Int) {
        self.name = name
        self.color = color
        self.chan = chan
    }
}
