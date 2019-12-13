func fibonacci(_ number: Int) -> Int{
  if number<2{
    return number
  }else{
    return fibonacci(number-2) + fibonacci(number-1)
  }
}
