//
//  Mergesort.m
//  Algorithm
//
//  Created by A2zinoth on 16/8/26.
//
//

#import <Foundation/Foundation.h>

void Merge(int arr[], int temp[], int low, int mid, int high) {
    int i = low, j = mid+1, k = low;  //low~mid  mid+1~high
    while (i != mid+1 && j != high+1) {
        if (arr[i] >= arr[j])
            temp[k++] = arr[j++];
        else
            temp[k++] = arr[i++];
    }
    while (i != mid+1)
        temp[k++] = arr[i++];
    while (j != high+1)
        temp[k++] = arr[j++];
    for (i = low; i <= high; i++)
        arr[i] = temp[i];
}


void Mergersort(int arr[],int temp[], int low, int high) {
    if (low < high) {
        int mid = (low + high) / 2;
        Mergersort(arr, temp, low, mid);
        Mergersort(arr, temp, mid+1, high);
        Merge(arr, temp, low, mid, high);
    }
}