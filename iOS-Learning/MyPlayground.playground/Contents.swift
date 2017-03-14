//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var name = "Rob"

print("hello" + name + ".")

var int:Int = 9

int = int * 2

int = int / 4

var anotherInt = 7
print (int * anotherInt)

print("The vaule of int is \(int)")

var number:Double = 8.4

print(number * Double(int))

var isMale:Bool = true

//Array

var array = [1, 2, 3, 4, 5]

print(array[2])

print(array.count)

array.append(56)

array.removeAtIndex(3)

array.sort()

//Dictionary
var dictionary = ["computer":"something to play call of duty on", "coffee":"best drink ever"]

print(dictionary["coffee"]!)

print(dictionary.count)

dictionary["pen"] = "Old fashioned writing implement"

dictionary.removeValueForKey("computer")

print(dictionary)

var menu = ["pizza": 10.99, "ice cream": 4.99, "salad":7.99]
var totalCost = menu["pizza"]! + menu["ice cream"]!
print("the total cost of pizza and ice cream is \(totalCost)")


//If statement
var age = 28

if age >= 18 {
    print("You can play!")
} else{
    print("Sorry, you are too young")
}

var name2 = "rob"
if name2 == "rob" {
    print("Hi " + name2 + " you can play")
}else {
    print("Sorry " + name2 + " you cnnot play")
}

if name2 == "rob" && age >= 18 {
    print("You can play!")
}


if name2 == "rob" || name2 == "kris" {
    print("Welcome " + name2)
}

if isMale {
    print("You are a man")
}

for var i = 1; i < 10; i++ {
    print (i)
}

var arr = [8, 3, 9, 91]

for x in arr {
    print(x)
}

for (index, value) in arr.enumerate() {
    print(value)
    arr[index] = value + 1
}
print(arr)



var myArray:[Double] = [8, 7, 19, 24]
for (index1, value1) in myArray.enumerate() {
    myArray[index1] = value1 / 2
    
}
print(myArray)


//while loop
var j = 1
while j < 10 {
    print(j * 5)
    j++
}

var arr2 = [8, 3, 1, 9, 4, 6, 7]
var m = 0
while m < arr.count {
    arr2[m]--
    print(arr[m])
    m++
}



//find a prime number
var number2 = 46
var isPrime = true
if number2 == 1 {
    isPrime == false
}
if number2 != 2 && number2 != 1 {
    for var n = 2; n < number2; n++ {
        if number2 % n == 0 {
            isPrime = false
            
        }
    }
}
print(isPrime)








