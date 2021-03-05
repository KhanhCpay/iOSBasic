 import Foundation
 
 print("""
Chọn mục bài tập cần chạy
1 - Bài 1: Diện tích và bán kính hình cầu
2 - Bài 2: Tổng bình phương của 2 số
3 - Bài 3: Số nguyên tố
4 - Bài 4: Số chia hết hay không
5 - Bài 5: Diện tích 3 cạnh của tam giác
6 - Bài 6: Xếp loại
7 - Bài 7: Thay thế phần tử
8 - Bài 8: Sắp xếp chuỗi tăng dần, gỉam dần
9 - Bài 9: Chuyển kí tự hoa, thường
10- Bài 10: Chương trình quản lý sinh viên trong lớp
----------------------------------------
""")
 
 var baiTap = Int(readLine() ?? "") ?? 0
 switch baiTap {
 case 1: hinhCau()
 case 2: sum()
 case 3: soNguyen()
 case 4: chiaHet()
 case 5: tamGiac()
 case 6: diemTB()
 case 7: array()
 case 8: soSanh()
 case 9: bai9()
 case 10: nameClass()
 default: print("Chưa chọn bài nào cả")
  }


