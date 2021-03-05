import Foundation
func chiaHet(){
    print("Bài 4")
    print("Mời nhập số a:")
    let a = Int(readLine() ?? "") ?? 0
    print("Mời nhập số b:")
    let b = Int(readLine() ?? "") ?? 0
    if b==0 {
        print("Không chia được")
    }
    else{
        let text : String =  (a%b==0) ? ("\(a) chia hết cho \(b)") : ("\(a) không chia hết cho \(b)")
        print(text)
    }
 
  }
  
