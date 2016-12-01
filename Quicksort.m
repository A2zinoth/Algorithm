//
//  Quicksort.m
//  Algorithm
//
//  Created by A2zinoth on 16/8/26.
//
//

#import <Foundation/Foundation.h>


int Partition(int arr[], int low, int high) {
    int pivot = arr[low];  // 枢轴 中位数 数组中第一个数
    while (low < high) {
        while (low < high && arr[high] >= pivot) high--;
        arr[low] = arr[high];
        while (low < high && arr[low] <= pivot) low++;
        arr[high] = arr[low];
    }
    arr[low] = pivot;
    return low;
}

int Quicksort(int arr[], int low, int high) {
    int pivot;  // 下标
    if(low < high) {
        pivot = Partition(arr, low, high);
        Quicksort(arr, low, pivot-1);   // 数组 low~pivot-1 均比pivot小
        Quicksort(arr, pivot+1, high);  // 数组 pivot+1~high 均比pivot大
    }
    return 0;
}
