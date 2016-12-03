//
//  BinarySearch.m
//  Algorithm
//
//  Created by A2zinoth on 2016/12/1.
//
//

#import <Foundation/Foundation.h>

int BinarySearch(int arr[], int low, int high, int target) {
    int mid = 0;
    while (low <= high) {
        mid = low + ((high-low)>>1);    // 溢出
        if (arr[mid] < target)
            low = mid + 1;              // 常步数前进
        else if (arr[mid] > target)
            high = mid - 1;
        else
            return mid;
    }
    return -1;
}
