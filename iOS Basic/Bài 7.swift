//
//  Bài 7.swift
//  iOS Basic
//
//  Created by Admin on 15/01/2021.
//

import Foundation
func array() -> Bool{
    print("Bài 7")
    print("Mời nhập số lượng phần tử trong mảng :")
    
    //Khởi tạo mảng
 
    //vòng lặp nhập giá trị
    let y = Int(readLine() ?? "") ?? 0
    var z = 0
    var digits = [Int]()
    while (z < y) {
        print("nhập phần tử tại ví trí \(z) trong mảng:")
        let x = Int(readLine() ?? "") ?? 0
        
//      Nhập mảng kiểu append  digits.append(x)
        digits.insert(x, at: z)
//      Nhập mảnh kiểu += digits += [x]
        z = z + 1
        
    }
    print("Mảng sau khi nhập là: \(digits)")
    
    
   
  
    for (index,value) in digits.enumerated()
    {
        if (value < 0) { digits[index] = 0
            print("Mảng đã thay vị trí \(index) là \(digits)")
        }

    }
return true
}
