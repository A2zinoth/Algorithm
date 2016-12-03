//
//  Insertsort.m
//  Algorithm
//
//  Created by A2zinoth on 2016/12/3.
//
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

void InsertSort(int arr[], int length) {
    int temp;
    for (int i = 0; i < length; i++){
        temp = arr[i];
        for (int j = i - 1; j >= 0; j--) {
            if (arr[j] > temp) {
                arr[j+1] = arr[j];
                arr[j] = temp;
            }
        }
    }
}


void BinaryInsertsort(int arr[], int length) {
    for (int i = 0; i < length; i++) {
        int low = 0;
        int height = i -1;
        int temp = arr[i];
        while (low <= height) {
            int mid = low + ((height - low) >> 1);
            if (temp < arr[mid]) {
                height = mid - 1;
            } else {
                low = mid + 1;
            }
        }
        for (int j = 0; j > low; j--) {
            swap(j, j-1)
        }
        swap(low, temp);
    }
}
