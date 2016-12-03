//
//  Heapsort.m
//  Algorithm
//
//  Created by A2zinoth on 2016/12/3.
//
//

#import <Foundation/Foundation.h>

// 大顶推 <小>
void HeapAdjustment(int arr[], int i, int length) {
    
    int root = arr[i];
    int child;  // 记录最大孩子
    
    for (;2*i+1 < length; i = child) {
        child = 2*i+1;
        if (child < length-1 && arr[child+1] > arr[child]) { // 当右孩子>左孩子 <>
            child++;
        }
        if (root < arr[child]) {   // 当根比孩子小时互换 <>
            arr[i] = arr[child];
            arr[child] = root;
        }
        else
            break;
    }
}


void Heapsort(int arr[], int length) {
    for (int i = (length>>1) - 1; i >= 0; i--) {
        HeapAdjustment(arr, i, length);
    }
    
    for (int j = length-1; j > 0; j--) {    // 将根输出
        int temp = arr[j];
        arr[j] = arr[0];
        arr[0] = temp;
        HeapAdjustment(arr, 0, j);
    }
}

/* 堆排序可通过树形结构保存部分比较结果，可减少比较次数。
