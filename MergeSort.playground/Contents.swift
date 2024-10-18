import Foundation

func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
    var mergedArray = [Int]()
    var leftIndex = 0
    var rightIndex = 0

    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] <= rightArray[rightIndex] {
            mergedArray.append(leftArray[leftIndex])
            leftIndex += 1
        } else {
            mergedArray.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    while leftIndex < leftArray.count {
        mergedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightArray.count {
        mergedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }

    return mergedArray
}

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    let midIndex = array.count / 2
    let leftArray = mergeSort(Array(array[0..<midIndex]))
    let rightArray = mergeSort(Array(array[midIndex..<array.count]))
    return merge(leftArray, rightArray)
}

func main() {
    let array = [38, 27, 43, 3, 9, 82, 10]
    print("Original array: \(array)")
    
    let sortedArray = mergeSort(array)
    print("Sorted array: \(sortedArray)")
}
main()
