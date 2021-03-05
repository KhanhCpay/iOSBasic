//
//  Nhập Thông Tin Sinh Viên.swift
//  iOS Basic
//
//  Created by Admin on 16/01/2021.
//

import Foundation
func inputName() -> String{
    //vòng lặp nhập giá trị cho sinh viên
    let y = 4
    var z = 1
    // Khai báo 1 mảng trống chưa có thông tin
    var digits = [String]()
    while (z <= y) {
        //Khai báo chuỗi chứa thông tin cần nhập bằng giá trị y để đưa vào mảng
        let thongtin = ["Tên", "Tuổi", "Địa chỉ" , "Số điện thoại"]
        // Khai báo vòng lặp lấy giá trị thông tin muốn show ra
        for index in thongtin {
            print("Nhập \(index)")
        // Nhập vào từ bàn phím 1 chuỗi nếu không nhập gì thì để là khoảng trống
        let x = String(readLine() ?? "")
        // Đưa giá trị vừa nhập vào mảng bằng cách nối chuỗi
            digits.append(x)
//        digits.insert(x, at: z)
//      Nhập mảnh kiểu += :  digits += [x]
        z = z + 1
        }
    }
    let student = Student(name: String(digits[0]), age: Int(digits[1]) ?? 0, address: String(digits[2]), phone: Int(digits[3]) ?? 0)
    if student.age == 0 && student.phone == 0 {
        print("Nhập không đúng")
    }
    var classA = Class(name: "IOS", teacherName: "Hoa", students: [student])
    print("\([student])")
    return "\(student.about())"
    
    
}
