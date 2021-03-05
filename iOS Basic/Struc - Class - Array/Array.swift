func mang(){
    //Định nghiã khai báo và khởi tạo mảng
    var number: [Int] = [1,2,3,4,5]
    //Đjnh nghĩa và khai báo khơi tạo set
    var numbers: Set<String> = ["0","2"]
    // Định nghĩa va khai báo khởi tạo dictinary
    var thanhPho: [String:String] = ["VN":"HN", "CN":"BK"]
    
    //Truy cập phần tử đối với dictinary
    print(thanhPho["VN"] ?? "")
    // Truy cập với mảng
    print(number[1])
    //Truy cập kiểm tra giá trị trong mảng của set
    print(numbers.contains("0"))
    //thêm phần tử vào mảng
    number.append(6)
    number.append(contentsOf: [3,2,10])
    //thay đổi 1 phần tủ
    number[3] = 23
    //Xoá 1 phần tử tại vị trí nào đó trong mảng
    number.remove(at: 2)

    //Duyệt mảng
    for x in number {
        print(x)
    }
    //Duyệt mảng kèm lấy giá trị index
    for (index,valua) in number.enumerated() {
        print(number[index])
        print("phần tử \(index) có giá trị là \(valua)")
    }
    for i in 0..<number.count {
        print("phần tu \(i) có giá trị inđex là: \(number[i])")
    }
    for i in 0...10 {
        print(i)
    }
    for i in thanhPho.keys {
        print("\(i) : \(thanhPho[i] ?? "")")
    }
}


//kiểm tra số n cho trước có phải số nguyên tố hay không
func soNguyento(_ n: Int) -> Bool {
    if (n<2) {
    return false
    }
    if n == 2 {
        return true
    }
    //duyệt các giá trị từ 2 đến n/2 xem có chia hết cho giá trị nào không
    //kiểm tra xem n có ước số khác 1 và chính nó hay không
    for i in 2..<n {
        if n % i == 0 {
       return false
            
        }
    }
    return true
    
  //TTESST GÍT
}

