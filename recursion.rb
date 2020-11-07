def fibs(num)
  arr = [0, 1]
  arr << arr[arr.length - 2] + arr[arr.length - 1] until arr.length == num
  arr
end
