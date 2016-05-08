//
//  main.m
//  快速排序1
//
//  Created by 王飞 on 16/4/18.
//  Copyright © 2016年 com.cube.cocoa. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <math.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[7] = {38,65,97,76,27,49,77};
        int pivotKey = a[0];
        int low = 0;
        int high = 6;
        int temp;
        
        while (low < high) {
            while (low < high && a[high] >= pivotKey) {
                --high;
            }
            temp = a[low];
            a[low] = a[high];
            a[high] = temp;
            while (low < high && a[low] <= pivotKey) {
                ++low;
            }
            temp = a[low];
            a[low] = a[high];
            a[high] = temp;
            
        }
        
        NSLog(@"中间数%d",a[low]);
        
        for (int i = 0; i < 7; i++) {
            NSLog(@"%d",a[i]);
        }
        
        
    }
    return 0;
}

int Partition (int low, int high) {
    return 1;
}
