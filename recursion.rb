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

  fibarr = fibs_rec(num - 1)

  fibarr.push(fibarr[-1] + fibarr[-2])
end

def merge(left, right)
  sorted = []

  while !left.empty? && !right.empty?

    if left[0] < right[0]

      sorted << left[0]

      left.shift

    elsif right[0] < left[0]

      sorted << right[0]

      right.shift

    end

  end

  sorted + left + right
end

def merge_sort(arr)
  return arr if arr.length < 2

  half = arr.length / 2

  left = merge_sort(arr[0..half - 1])

  right = merge_sort(arr[half..-1])

  sorted = merge(left, right)
end
