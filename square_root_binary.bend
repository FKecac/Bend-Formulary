# calculate square root using binary search

# keep in mind the limit range of u24, too large numbers will not work

# Number will be rounded. Implementation of float square root soon


# checks value squared is greater than target value
def is_square_too_large(x, target):
  return x * x > target

# recursive function for binary search
def binary_search_sqrt(low, high, target):
  if low > high:
    return high
  else:
    mid = (low + high)/2
    if is_square_too_large(mid, target):
      return binary_search_sqrt(low, mid - 1, target)
    else:
      return binary_search_sqrt(mid + 1, high, target)

def sqrt(n):
  if n < 0:
    return "Error: Negative input"
  else:
    if n == 0:
      return 0
    else:
      return binary_search_sqrt(1, n, n)

def main:
  number = 35  # <----------- Replace with number to find its square root 
  return sqrt(number)
