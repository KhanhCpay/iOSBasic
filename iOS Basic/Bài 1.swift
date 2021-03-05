import Foundation
func hinhCau(){
    print("""
    Bài 1:
    Mời nhập bán kính hình cầu:
    """)
let r = Float(readLine() ?? "") ?? 0
var dienTich: Float
var theTich: Float
var pi: Float
    pi = 3.14
    print("Bài 1")
    //dienTich = 4*pi*r*r
    dienTich = 4*Float.pi*powf(r,2)
    theTich = (4/3)*pi*r*r*r
    print("Hinh cau co ban kinh la: \(r) , dien tich hinh cau la: \(dienTich), the tich hinh cau la:\(theTich)")
    }
