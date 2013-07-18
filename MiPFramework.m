//
//  MiPFramework.m
//  MiP iOS Framework
//
//  Created by Norman Russo on 17/07/13.
//  Copyright (c) since 2013 Norman Russo. All rights reserved.
//

#import "MiPFramework.h"

@interface MiPFramework ()

@end

@implementation MiPFramework


//METODI FRAMEWORK

//Seleziona una plist
- (void)plist:(NSString*)nomeplist
{
    NSURL *filePlist = [[NSBundle mainBundle] URLForResource:nomeplist withExtension:@"plist"]; //Lets get the file location
    
    NSMutableDictionary *contenutoPlist = [NSDictionary dictionaryWithContentsOfURL:filePlist];
}

//Modifica un valore nella plist e la scrive nel file
-(void)modificaPlist:(NSString*)chiave conValore:(NSString*)valore
{
    
    [contenutoPlist setValue:valore forKey:chiave];
    
    NSString *errorePlist = nil;
    
    NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:contenutoPlist format:NSPropertyListXMLFormat_v1_0 errorDescription:&errorePlist];
    
    // check is plistData exists
    if(plistData)
    {
        // write plistData to our Data.plist file
        [plistData writeToFile:[NSString stringWithFormat:@"%@",filePlist] atomically:YES];
    }
    else
    {
        NSLog(@"Errore nella modifica plist: %@", errorePlist);
    }
}






@end
