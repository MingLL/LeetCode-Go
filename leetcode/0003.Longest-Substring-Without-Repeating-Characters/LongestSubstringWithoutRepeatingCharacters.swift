func lengthOfLongestSubstring(_ s: String) -> Int {
  var dic = Dictionary<Character, Int>()
  var reslut = 0
  var start = 0
  for (index, char) in s.enumerated() {
    let previousIndex = dic[char] ?? -1
    if previousIndex >= start {
      start = previousIndex + 1
    }
    let currentLenght = index - start + 1
    reslut = max(reslut, currentLenght)
    dic[char] = index
  }
  return reslut
  
}