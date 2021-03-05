import Foundation
func soNguyen() -> Bool {
    print("Mời nhập số n:")
    let n = Int(readLine() ?? "") ?? 0
    print("Bài 3")
    let message1 : String = (n > 0) ? ("\(n) là số nguyên dương") : ("\(n) không là số nguyên dương")
    print(message1)
    let message2 : String =  (n % 2 == 0) ? ("\(n) là số chẵn") : ("\(n) là số lẻ")
    print(message2)
    let message3 : String =  (n % 5 == 0) ? ("\(n) là số chia hết cho 5") : ("\(n) là số không chia hết cho 5 ")
    print(message3)
    
    if (n<2) {
        print("\(n) không là số nguyên tố")
        return false
    }
    if n == 2 {
        print("\(n) là số nguyên tố")
        return true
        
    }
    //duyệt các giá trị từ 2 đến n/2 xem có chia hết cho giá trị nào không
    //kiểm tra xem n có ước số khác 1 và chính nó hay không
    for i in 2..<n {
        if n % i == 0 {
            print("\(n) là số nguyên tố")
            return false
            
        }
    }
    return true
}
