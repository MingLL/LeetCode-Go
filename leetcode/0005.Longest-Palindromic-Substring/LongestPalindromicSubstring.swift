func longestPalindrome(_ s: String) -> String {
    var start = 0
    var end = 0
    let strAry = Array(s)
    
    var i = 0
    var dic = [String : Int]()
    
    for element in strAry {
        start = i
        end = i
        
        while start - 1 >= 0 { // 左移多位判断
            if strAry[start - 1] == element {
                start -= 1
            }else {
                break
            }
        }
        
        while end + 1 <= (strAry.count - 1) {  // 右移多位判断
            if strAry[end + 1] == element {
                end += 1
            }else {
                break
            }
        }
        
        while start >= 0 && end <= (strAry.count - 1) { // 判断是否为回文串
            if start != end {
                if strAry[start] == strAry[end] { // 子字符
                    if dic["count"] ?? 0 < (end - start + 1) {
                        dic["count"] = end - start + 1
                        dic["start"] = start
                        dic["end"] = end
                    }
                }else {
                    break
                }
            }
            
            start -= 1
            end += 1
        }
        
        
        i += 1
    }
    
    var newStr = [String]()
    start = dic["start"] ?? 0
    end = dic["end"] ?? 0
    
    for index in start ... end {
        newStr.append(strAry[index].description)
    }
    
    return newStr.joined()
}