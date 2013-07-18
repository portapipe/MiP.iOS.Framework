//
//  MiPFramework.h
//  MiP iOS Framework
//
//  Created by Norman Russo on 17/07/13.
//  Copyright (c) since 2013 Norman Russo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MiPFramework : NSObject{
    
    //Per collegamento e modifica plist
    NSMutableDictionary *contenutoPlist;
    NSURL *filePlist;


}

//per collegamento e modifica plist
-(void)plist:(NSString*)nomeplist;
-(void)modificaPlist:(NSString*)chiave conValore:(NSString*)valore;



@end
