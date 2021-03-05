
func tamGiac()  {
    print("Bài 4")
    print("Mời nhập cạnh a:")
    let a = Float(readLine() ?? "") ?? 0
    print("Mời nhập cạnh b:")
    let b = Float(readLine() ?? "") ?? 0
    print("Mời nhập cạnh c:")
    let c = Float(readLine() ?? "") ?? 0
   if (a <= 0 || b <= 0 || c <= 0) {
       print("Mời kiểm tra lại giá trị cuả 3 cạnh tam giác")
   }
   else {
       let x: Float = (a+b+c) * (a+b-c) * (b+c-a) * (c+a-b)
 var tuSo: Float
 tuSo = x.squareRoot()
 let dienTichtamgiac = tuSo/4
 let text1 : String =  ((a+b>c) || (a+c>b) || (c+b>a) ) ? ("\(a),\(b),\(c) là 3 cạnh của tam giác và có diện tích là: \(dienTichtamgiac)") : ("\(a),\(b), \(c) không là 3 cạnh của tam giác")
 print(text1)
 }
 }

