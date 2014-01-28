//
//  Profile.h
//  ProjectPETMILY
//
//  Created by 한상민(iPhone) on 2014. 1. 24..
//  Copyright (c) 2014년 한상민(개만정벌). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Profile : NSObject

{
    NSMutableDictionary *profiles;
}


+(id)defaultProfile;
// 서버에서 받아오는 코드를 단순히 이미지배열로 선언해 놓는다.


@end
