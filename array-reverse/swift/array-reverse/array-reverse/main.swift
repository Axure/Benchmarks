//
//  main.swift
//  array-reverse
//
//  Created by Alex Nichol on 7/11/14.
//  Copyright (c) 2014 Alex Nichol. All rights reserved.
//

import Foundation

func reverseArray(inout theList: Array<Int>) {
  for i in 0...(theList.count >> 1) - 1 {
    let lastIdx = theList.count - i - 1
    let lastValue = theList[lastIdx]
    theList[lastIdx] = theList[i]
    theList[i] = lastValue
  }
}

let args = [String](Process.arguments)
let argc = args.count

if argc != 3 {
  print("Usage: ./array-reverse <size> <iterations>")
  exit(1)
}

let size = Int(String.fromCString(args[1])!)!
let iterations = Int(String.fromCString(args[2])!)!


var list = Array<Int>(count: size, repeatedValue: 0)
for i in 0...size - 1 {
  list[i] = i
}

for i in 0...iterations - 1 {
  reverseArray(&list)
}
