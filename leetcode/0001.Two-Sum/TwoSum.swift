
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
  var dic = Dictionary<Int, Int>()
  for (index, num) in nums.enumerated() {
      if let n = dic[target - num] {
          return [n, index]
      }
      dic[num] = index
  }
  return [];
}

