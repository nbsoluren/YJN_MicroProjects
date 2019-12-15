//
//  main.swift
//  MergeSort
//
//  Created by Natalie Nicole Soluren on 12/15/19.
//  Copyright © 2019 Natalie Nicole Soluren. All rights reserved.
//

import Foundation

//merge two sorted arrays
func mergeTwoArrays(_ arr1: [Int],_ arr2: [Int]) -> [Int]{
    var sorted: [Int] = []
    var pt1: Int = 0
    var pt2: Int = 0
    let arr1Len: Int = arr1.count
    let arr2Len: Int = arr2.count
    while(pt1<arr1Len || pt2<arr2Len){
        if(pt1<arr1Len && pt2>=arr2Len){
            sorted.append(arr1[pt1])
            pt1 += 1
        }else if(pt2<arr2Len && pt1>=arr1Len){
            sorted.append(arr2[pt2])
            pt2 += 1
        }else if(arr1[pt1]>arr2[pt2]){
            sorted.append(arr2[pt2])
            pt2 += 1
        }else{
            sorted.append(arr1[pt1])
            pt1 += 1
        }
    }
    return sorted
}
//copy sorted array to main array
func Merge(_ array: inout [Int], _ l: Int, _ m: Int, _ r: Int) -> Void {
    let sorted = mergeTwoArrays(Array(array[l..<m]), Array(array[m..<r]))
    for i in l..<r{
        array[i] = sorted[i-l]
    }
}
//recursive mergesort

func MergeSort(_ array: inout [Int], _ l: Int, _ r: Int) {
    if (r-l) < 2{
        return
    }
    let m : Int = (l+r)/2
    MergeSort(&array, l, m);
    MergeSort(&array, m, r);
    Merge(&array, l, m, r);
}


var x: [Int] = Array([1,2,3,4,5].reversed())
print(x)
MergeSort(&x, 0, x.count)
print(x)
