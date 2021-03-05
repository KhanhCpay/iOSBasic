//
//  Nhập tên lớp.swift
//  iOS Basic
//
//  Created by Admin on 16/01/2021.
//

import Foundation
func nameClass() -> String {
    print("Mời nhập số lớp học muốn tạo :", terminator: "")
    let c = Int(readLine() ?? "") ?? 0
    var l = 1
    if c == 0 || c < 0 {print("Nhập ít nhất 1 lớp")}
    print("Mời nhập tên lớp học : ", terminator: "")
    while l <= c {
        let nameClass = String(readLine() ?? "")
        if nameClass == "" {
            print("Phải nhập tên lớp")
        }
        print("Mời nhập tên gíao viên chủ nhiệm : ", terminator: "")
        let teacherName = String(readLine() ?? "")
        if teacherName == "" {
            print("Phải nhập tên giáo viên")
        }
        print("Mời nhập số lượng sinh viên trong lớp: ", terminator: "")
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
                    print("Nhập \(index): ", terminator: "")
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
        let classA = Class(name: nameClass, teacherName: teacherName, students: [])
        func tinhNang(){
            print("""
            ------------------------------------------
            Chọn chức năng
            1 - Thay tên lớp học
            2 - Chỉnh sửa tên giáo viên lớp
            3 - Thêm sinh viên
            4 - Tìm sinh viên theo tên và chỉnh sửa tên
            5 - Xoá tên sinh viên theo tên
            ------------------------------------------
            """)
          
            let option = Int(readLine() ?? "") ?? 0
             switch option {
             case 1:
                //Thay tên lớp học
                print("Mời nhập tên mới của lớp : ", terminator: "")
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
                let returnOption = Int(readLine() ?? "") ?? 0
                if returnOption == 1 {
                tinhNang()
                }
                else {break}
                
            case 2:
                //Thay tên giáo viên
                   
                    print("Mời nhập tên gíao viên chủ nhiệm : ", terminator: "")
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
                    print("""
                    __________________________________________

                    BẤM 1 ĐỀ TIẾP TỤC CHỌN CHỨC NĂNG
                    BẤM 0 ĐỂ THOÁT
                    __________________________________________
                    """)
                    let returnOption = Int(readLine() ?? "") ?? 0
                    if returnOption == 1 {
                    tinhNang()
                    }
                    else {break}
            case 3:
                
                    //Thêm sinh viên mới
                    print("Mời nhập số lượng sinh viên muốn thêm vào lớp: ", terminator: "")
                    let q = Int(readLine() ?? "") ?? 0
                    if q == 0 || q < 0 {print("Chưa nhập gì hoặc không đúng định dạng")}
                    var t = 1
                    //var addArray = [String]()
                    while (t <= q) {
                    print("Nhập thông tin sinh viên thứ \(t): ", terminator: "")
                        let y = 4
                        var z = 1
                        var digits = [String]()
                        while (z <= y) {
                            let thongtin = ["Tên", "Tuổi", "Địa chỉ" , "Số điện thoại"]
                            for index in thongtin {
                                print("Nhập \(index): ", terminator: "")
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
                --------------THÔNG TIN LỚP---------------
                    Lớp \(classA.name) - Giáo viên: \(classA.teacherName)
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
                    let returnOption = Int(readLine() ?? "") ?? 0
                    if returnOption == 1 {
                    tinhNang()
                    }
                    else {break}
             case 4:
                print("Nhập tên sinh viên muốn tìm: ", terminator: "")
                let nameFind = String(readLine() ?? "")
                for i in 0..<addArray.count {
                    if "\(addArray[i].first!)" == "\(nameFind)" {
                        // Nhập tên mới
                        print("Nhập tên mới cho sinh viên \(nameFind): ", terminator: "")
                        let newName = String(readLine() ?? "")
                        addArray[i].removeFirst()
                        addArray[i].insert(contentsOf: "\(newName)" , at: String.Index(encodedOffset: 0))
                        print("Đổi tên sinh viên thành công")
                    }
                    else {print("Không có sinh viên cần tìm")}
                    }
                print("""
                --------------THÔNG TIN LỚP---------------
                    Lớp \(classA.name) - Giáo viên: \(classA.teacherName)
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
                let returnOption = Int(readLine() ?? "") ?? 0
                if returnOption == 1 {
                tinhNang()
                }
                else {break}
             case 5:
                print("Nhập tên sinh viên muốn xoá: ", terminator: "")
                let nameFind = String(readLine() ?? "")
                for i in 0..<addArray.count {
                    if "\(addArray[i].first!)" == "\(nameFind)" {
                        // Nhập tên mới
                        addArray[i].removeAll()
                        print("Xoá sinh viên thành công")
                    }
                    else {print("Không có sinh viên cần tìm")}
                    }
                print("""
                --------------THÔNG TIN LỚP---------------
                    Lớp \(classA.name) - Giáo viên: \(classA.teacherName)
                ------------------------------------------
                """)
                
                for value in addArray.enumerated() {
                    print("Sinh viên \(value)")
                        
                    }
                print("""
                __________________________________________

                BẤM 1 ĐỀ TIẾP TỤC CHỌN CHỨC NĂNG
                BẤM 0 ĐỂ THOÁT
                __________________________________________
                """)
                let returnOption = Int(readLine() ?? "") ?? 0
                if returnOption == 1 {
                tinhNang()
                }
                else {break}
                
             default: print("Chưa chọn tính năng nào cả")
              }
            
        
        }
        tinhNang()
        l = l + 1
        }
    return "Thông Tin lớp học"
    
}

