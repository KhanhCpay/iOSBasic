//
//  Return Class.swift
//  iOS Basic
//
//  Created by Admin on 20/01/2021.
//

import Foundation
//
//  Nhập tên lớp.swift
//  iOS Basic
//
//  Created by Admin on 16/01/2021.
//

import Foundation
func nameClassreturn() -> String {
    print("Mời nhập số lớp học muốn tạo :")
    let c = Int(readLine() ?? "") ?? 0
    var l = 1
    if c == 0 || c < 0 {print("Nhập ít nhất 1 lớp")}
    print("Mời nhập tên lớp học :")
    while l <= c {
        let nameClass = String(readLine() ?? "")
        if nameClass == "" {
            print("Phải nhập tên lớp")
        }
        print("Mời nhập tên gíao viên chủ nhiệm :")
        let teacherName = String(readLine() ?? "")
        if teacherName == "" {
            print("Phải nhập tên giáo viên")
        }
        print("Mời nhập số lượng sinh viên trong lớp:")
        let q = Int(readLine() ?? "") ?? 0
        if q == 0 || q < 0 {print("Chưa nhập gì hoặc không đúng định dạng")}
        var t = 1
        var addArray = [String]()
        while (t <= q) {
        print("Nhập thông tin sinh viên thứ \(t)")
            let y = 4
            var z = 1
            var digits = [String]()
            while (z <= y) {
                let thongtin = ["Tên", "Tuổi", "Địa chỉ" , "Số điện thoại"]
                for index in thongtin {
                    print("Nhập \(index)")
                let x = String(readLine() ?? "")
                    digits.append(x)
                z = z + 1
                }
            }
            let student = Student(name: String(digits[0]), age: Int(digits[1]) ?? 0, address: String(digits[2]), phone: Int(digits[3]) ?? 0)
            if student.age == 0 && student.phone == 0 {
                print("Nhập không đúng")
            }
           
            addArray.append(student.about())
            t = t + 1

        }
        print("""
        -------------THÔNG TIN LỚP HỌC------------
        Lớp \(nameClass) - Giáo viên: \(teacherName)
        ------------------------------------------
        """)
        
        for (index, value) in addArray.enumerated() {
            print("Sinh viên \(index): \(value)")
            
        }
        print("""
        ------------------------------------------
        Chọn chức năng
        1 - Thay tên lớp học
        2 - Chỉnh sửa tên giáo viên lớp
        3 - Thêm sinh viên
        4 - Tìm sinh viên theo tên và chỉnh sửa tên
        5 - Hiển thị thông tin lớp học
        ------------------------------------------
        """)
        
        
         let option = Int(readLine() ?? "") ?? 0
         switch option {
         case 1:
            //Thay tên lớp học
            let classA = Class(name: nameClass, teacherName: teacherName, students: [])
            
            print("Mời nhập tên mới của lớp :")
            let k = String(readLine() ?? "")
            if k == "" {
                print("Nhập lại tên lớp")
                
            }
            classA.updateNameOfClass(name: "\(k)")
           
            print("""
            --------------THÔNG TIN LỚP---------------
                Lớp \(classA.name) - Giáo viên: \(teacherName)
            ------------------------------------------
            """)
            
            for (index, value) in addArray.enumerated() {
                print("Sinh viên \(index): \(value)")
            }
            print("""
            __________________________________________

            BẤM 1 ĐỀ TIẾP TỤC CHỌN CHỨC NĂNG
            BẤM 0 ĐỂ THOÁT
            __________________________________________
            """)
            var returnOption = Int(readLine() ?? "") ?? 0
            if returnOption == 1 {
                nameClassreturn()
            }
            else {
            break
            }
            case 2:
            //Thay tên giáo viên
            let classA = Class(name: nameClass, teacherName: teacherName, students: [])
            print("Mời nhập tên gíao viên chủ nhiệm :")
            let k = String(readLine() ?? "")
            if k == "" {
                print("Phải nhập tên giáo viên")
            }
            classA.updateNameOfTeacher(teacherName: "\(k)")
           
            print("""
            --------------THÔNG TIN LỚP---------------
                Lớp \(classA.name) - Giáo viên: \(classA.teacherName)
            ------------------------------------------
            """)
            
            for (index, value) in addArray.enumerated() {
                print("Sinh viên \(index): \(value)")
                
            }
         case 3:
            //Thêm sinh viên mới
            print("Mời nhập số lượng sinh viên muốn thêm vào lớp:")
            let q = Int(readLine() ?? "") ?? 0
            if q == 0 || q < 0 {print("Chưa nhập gì hoặc không đúng định dạng")}
            var t = 1
            var addArray = [String]()
            while (t <= q) {
            print("Nhập thông tin sinh viên thứ \(t)")
                let y = 4
                var z = 1
                var digits = [String]()
                while (z <= y) {
                    let thongtin = ["Tên", "Tuổi", "Địa chỉ" , "Số điện thoại"]
                    for index in thongtin {
                        print("Nhập \(index)")
                    let x = String(readLine() ?? "")
                        digits.append(x)
                    z = z + 1
                    }
                }
                let student = Student(name: String(digits[0]), age: Int(digits[1]) ?? 0, address: String(digits[2]), phone: Int(digits[3]) ?? 0)
                if student.age == 0 && student.phone == 0 {
                    print("Nhập không đúng")
                }
               
                addArray.append(student.about())
                t = t + 1
                
                let classA = Class(name: nameClass, teacherName: teacherName, students: [])
                print("""
                --------------THÔNG TIN LỚP---------------
                    Lớp \(classA.name) - Giáo viên: \(classA.teacherName)
                ------------------------------------------
                """)
                
                for (index, value) in addArray.enumerated() {
                    print("Sinh viên \(index): \(value)")
                    
                }
            }
            
         case 4: 1
         default: print("Chưa chọn tính năng nào cả")
          }
        
            l = l + 1
        
        }

    
    return ""
    
}

