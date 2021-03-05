//
//  Option 6 hiển thị thông tin lớp.swift
//  iOS Basic
//
//  Created by Admin on 18/01/2021.
//

import Foundation
let ClassA = Class(nameClass:nameClass, teacherName:teacherName, students: studentInClass())
print("""
    Tên lớp học hiện tại: \(ClassA.nameClass)
    Tên giáo viên: \(ClassA.teacherName)
    Danh sách sinh viên\(ClassA.students)
    """)
   
 
