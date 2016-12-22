//
//  Mergesort.m
//  Algorithm
//
//  Created by A2zinoth on 16/8/26.
//
//

#import <Foundation/Foundation.h>


// temp size (high-low+1)
void Merge(int arr[], int low, int mid, int high) {
    int i = low, j = mid+1, k = low;  //low~mid  mid+1~high
    
    int *temp = malloc(sizeof(int)*high-low+1);
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
    free(temp);
}

#pragma mark <Recursion>
void Mergersort(int arr[], int low, int high) {
    if (low < high) {
        int mid = (low + high) / 2;
        Mergersort(arr, low, mid);
        Mergersort(arr, mid+1, high);
        Merge(arr, low, mid, high);
    }
}


#pragma mark <Iteration>
int Min(int a, int b) {
    if (a > b)
        return a;
    else
        return b;
}

void Mergersort_I(int arr[], int low, int high) {
    for (int i = 1; i<(high-low+1); i=i<<1) {
        for (int j = low; j <= high - i; j += (i<<1)) {
            Merge(arr, j, i+j-1, Min((j+ (i<<1)-1), high) );
        }
    }
}
