func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
  let lenght = nums1.count + nums2.count
  if lenght % 2 == 1 {
    return Double(getKthElement(nums1, nums2, (lenght / 2) + 1))
  } else {
    return Double(getKthElement(nums1, nums2, (lenght / 2)) + getKthElement(nums1, nums2, (lenght / 2) + 1)) / 2.0
  }
}

func getKthElement(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> Int {
  var index1 = 0
  var index2 = 0
  var mid = k 
  while true {
    if index1 == nums1.count {
      return nums2[index2 + mid - 1]
    }
    if index2 == nums2.count {
      return nums1[index1 + mid - 1]
    }
    if mid == 1 {
      return min(nums1[index1], nums2[index2])
    }
    let half = mid / 2
    let newIndex1 = min(index1 + half, nums1.count) - 1
    let newIndex2 = min(index2 + half, nums2.count) - 1

    if nums1[newIndex1] <= nums2[newIndex2] {
      mid -= (newIndex1 - index1 + 1)
      index1 = newIndex1 + 1
    } else {
      mid -= (newIndex2 - index2 + 1)
      index2 = newIndex2 + 1
    }
  }
}
