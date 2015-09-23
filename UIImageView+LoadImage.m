//
//  UIImageView+LoadImage.m
//  Photo
//
//  Created by Tanawat Polsuwan on 9/22/2558 BE.
//  Copyright (c) 2558 Tanawat Polsuwan. All rights reserved.
//

#import "UIImageView+LoadImage.h"

@implementation UIImageView (LoadImage)

-(void)loadImage:(NSString *)url{
    
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        
        NSLog(@"Loading...");
        
        NSURL *tempURL = [NSURL URLWithString:url];
        NSData *imageData = [[NSData alloc] initWithContentsOfURL:tempURL];
        
        dispatch_async(dispatch_get_main_queue(), ^(void){
            
            NSLog(@"Finish...");
            [self setImage:[UIImage imageWithData:imageData]];
            
        });
        
    });

}

@end
