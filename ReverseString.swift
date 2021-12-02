/*
This program gets some string input,
reverse the string using recursion and shows reversed string.
author  Donggeun Lim
version 1.0
since   2021-12-01
*/

// This function uses recursion to reverse the string.
func reverse(someString: String) -> String {
  if someString.count == 1 {
    return someString
  } else {
    return reverse(someString: String(someString.dropFirst()))
                   + String(Array(someString)[0])
  }
}

// Input
print("The original string is : ", terminator: "")
let inputString = String(readLine()!)

// Output
print("The reversed string (using recursion) is : ",
      reverse(someString: inputString))
print("\nDone.")
