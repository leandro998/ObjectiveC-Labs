//
//  Box.h
//  ObjectiveCLab2
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject

- (instancetype)initWithHeight: (float *) height andWidth: (float *) width andLength: (float *) length;

- (float *) height;
- (float *) width;
- (float *) length;

@end

NS_ASSUME_NONNULL_END
