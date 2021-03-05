//
//  Lớp học.swift
//  iOS Basic
//
//  Created by Admin on 14/01/2021.
//

import Foundation
class Class  {
    var name: String
    var teacherName: String
    var students: [Student]



    init(name: String, teacherName: String, students: [Student]) {
        self.name = name
        self.teacherName = teacherName
        self.students = students
    }
    
    //THÔNG TIN SINH VIÊN
    func output () {
        for i in students {
            print ("Sinh Vien: \(i.name), \(i.age) Tuoi, Dia CHi: \(i.address), So dien thoai\(i.phone)")
        }
      }
    //THÔNG TIN LỚP HỌC VÀ SINH VIÊN
    func about() -> String {
        return "Lớp: \(name), Giáo viên: \(teacherName), Học sinh: \(students) "
    }
    //THÊM SINH VIÊN
    func addStudent (students: Student) {
        self.students.append(students)
    }
    //TÌM TÊN SV VÀ THAY TÊN
    
    //THAY ĐỔI TÊN LỚP HỌC
    func updateNameOfClass(name: String){
        self.name = name
    }
    // THAY ĐỔI TÊN GIÁO VIÊN
    func updateNameOfTeacher(teacherName: String){
        self.teacherName = teacherName
    }
    
  
    
}
