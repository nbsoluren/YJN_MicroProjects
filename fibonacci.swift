func fibonacci(_ number: Int) -> Int{
  if number<2{
    return number
  }else{
    return fibonacci(number-2) + fibonacci(number-1)
  }
}

print(fibonacci(1))//should return 1
print(fibonacci(6))//should print 0
