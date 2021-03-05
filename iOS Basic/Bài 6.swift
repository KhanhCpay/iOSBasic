//
//  Bài 6.swift
//  iOS Basic
//
//  Created by Admin on 15/01/2021.
//

import Foundation
func diemTB() {
print("Mời nhập điểm Toán:")
let toan = Float(readLine() ?? "") ?? 0
print("Mời nhập điểm Anh:")
let anh = Float(readLine() ?? "") ?? 0
print("Mời nhập điểm Văn:")
let van = Float(readLine() ?? "") ?? 0
let sum: Float
sum = (toan + anh + van)/3
let score = "Điểm trung bình là: \(sum)"
if sum < 0 || sum > 10 {
  print("Không hợp lệ")
}
else if sum > 8 {
  print("\(score) - giỏi")
}
else if 5 <= sum && sum < 8 {
  print("\(score) - khá")
}
else if 3 <= sum && sum < 5 {
 print("\(score) - trung bình")
}
else {
  print("\(score) - kém")
}
}
