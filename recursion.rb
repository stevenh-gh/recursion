def fibs(num)
  return [] if num == 0
  return [1] if num == 1

  arr = [1, 1]
  arr << arr[arr.length - 2] + arr[arr.length - 1] until arr.length == num
  arr
end

def fibs_rec(num)
  return [] if num == 0
  return [1] if num == 1
  return [1, 1] if num == 2

  fibs_rec(num - 1).push(fibs_rec(num - 1)[-1] + fibs_rec(num - 1)[-2])
end

def merge_sort(arr)
  arr
end
