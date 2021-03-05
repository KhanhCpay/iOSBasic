//
//  Bài 8.swift
//  iOS Basic
//
//  Created by Admin on 15/01/2021.
//

import Foundation
func soSanh() -> Bool{
    print("Bài 8")
    print("Mời nhập số lượng phần tử trong mảng :")
    
    //Khởi tạo mảng
 
    //vòng lặp nhập giá trị
    let y = Int(readLine() ?? "") ?? 0
    var z = 1
    var digits = [Int]()
    while (z <= y) {
        print("nhập phần tử tại ví trí \(z) trong mảng:")
        let x = Int(readLine() ?? "") ?? 0
        
//      Nhập mảng kiểu append  digits.append(x)
        digits.insert(x, at: z)
//      Nhập mảnh kiểu += digits += [x]
        z = z + 1
        
    }
    print("Mảng sau khi nhập là: \(digits)")
    
    /* Cách 1: dùng với sorted*/
    let t = digits.sorted {$0<$1}
    let q = digits.sorted {$0>$1}
    print("Mảng sau khi sắp xếp tăng dần là: \(t)")
    print("Mảng sau khi sắp xếp giảm dần là: \(q)")
    /* Cách 2: dùng vòng lặp so sánh giá trị*/

return true
}
