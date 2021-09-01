func convert(_ s: String, _ numRows: Int) -> String {
    if numRows == 1 {
        return s
    }
    var array: [String] = Array(repeating: "", count: min(numRows, s.count))
    var goingDown = false
    var curRow = 0
    for c in s {
        array[curRow] += String(c)
        if curRow == 0 || curRow == numRows - 1 {
            goingDown = !goingDown
        }
        
        curRow += (goingDown ?  1 : -1) * 1
    }
    var res = ""
    for s in array {
        res += s
    }
    return res
}