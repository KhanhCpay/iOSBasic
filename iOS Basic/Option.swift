//
//  Option.swift
//  iOS Basic
//
//  Created by Admin on 18/01/2021.
//

import Foundation

func option()  {
    nameClass()
    print("""
    Chọn chức năng
    1 - Thay tên lớp học
    2 - Chỉnh sửa tên giáo viên lớp
    3 - Thêm sinh viên
    4 - Tìm sinh viên theo tên và chỉnh sửa tên
    5 - Hiển thị thông tin lớp học
    ----------------------------------------
    """)
     let option = Int(readLine() ?? "") ?? 0
     switch option {
     case 1: 1
     case 2: 1
     case 3: 1
     case 4: 1
     default: print("Chưa chọn tính năng nào cả")
      }
}

