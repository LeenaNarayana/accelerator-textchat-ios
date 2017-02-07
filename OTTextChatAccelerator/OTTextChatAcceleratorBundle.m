//
//  OTTextChatKitBundle.m
//
//  Copyright © 2016 Tokbox, Inc. All rights reserved.
//

#import "OTTextChatAcceleratorBundle.h"
#import "OTTextChatViewController.h"

@implementation OTTextChatAcceleratorBundle

+ (NSBundle *)textChatAcceleratorBundle {
    
    NSURL *textChatKitBundleURL = [[NSBundle mainBundle] URLForResource:@"OTTextChatAcceleratorBundle" withExtension:@"bundle"];
    if (textChatKitBundleURL){
        NSBundle *textChatViewBundle = [NSBundle bundleWithURL:textChatKitBundleURL];
        if (!textChatViewBundle.isLoaded) {
            [textChatViewBundle load];
        }
        return textChatViewBundle;
    }
    
    textChatKitBundleURL = [[NSBundle bundleForClass:[OTTextChatViewController class]] URLForResource:@"OTTextChatAcceleratorBundle" withExtension:@"bundle"];
    if (textChatKitBundleURL) {
        NSBundle *textChatViewBundle = [NSBundle bundleWithURL:textChatKitBundleURL];
        if (!textChatViewBundle.isLoaded) {
            [textChatViewBundle load];
        }
        return textChatViewBundle;
    }
    
    return  nil;
}

@end
