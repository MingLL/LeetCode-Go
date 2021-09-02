func reverse(_ x: Int) -> Int {
  var num = x
  var reverseNum = 0
  while num != 0 {
    let a = num % 10
    num /= 10
    reverseNum = reverseNum * 10 + a
  }
  guard reverseNum <= Int.max && reverseNum > Int.min else {
    return 0
  }
  return reverseNum
}

print(reverse(-123))
