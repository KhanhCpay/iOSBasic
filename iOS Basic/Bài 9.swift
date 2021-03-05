//
//  Bài 9.swift
//  iOS Basic
//
//  Created by Admin on 15/01/2021.
//

import Foundation
func bai9() -> Bool {
    print("Bài 9")
    print("Mời nhập chuỗi :")
    let chuoiString = String(readLine() ?? "")
    //let noiChuoi: String = chuoiString.joined(separator: " ")
    print("Chuỗi viết hoa: \(chuoiString.uppercased())")
    print("Chuỗi viết thường: \(chuoiString.lowercased())")
    
    return true
    
}

