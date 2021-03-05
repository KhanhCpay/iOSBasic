import Foundation

func sum() -> Float{

    print("Bài 2")
    print("Mời nhập số a:")
    let a = Float(readLine() ?? "") ?? 0
    print("Mời nhập số b:")
    let b = Float(readLine() ?? "") ?? 0
    let tinhTong = powf(Float(a),2)+powf(Float(b),2)
    print("Tổng bình phương 2 số đó là:",tinhTong)
    return tinhTong
  }
