//
//  Box.m
//  ObjectiveCLab2
//
//  Created by Leandro Prado on 2020-06-09.
//  Copyright © 2020 Leandro Prado. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

@implementation Box {
    float *_height;
    float *_width;
    float *_length;
}

- (instancetype)initWithHeight: (float *) height andWidth: (float *) width andLength: (float *) length {
  self = [super init];
  if (self) {
    _height = height;
    _width = width;
    _length = length;
  }
  return self;
}

- (float *) height {
    return _height;
}

- (float *) width {
    return _width;
}

- (float *) length {
    return _length;
}

// it doesn't allow to multiply:

//- (float *) boxVolume {
//    float boxVolume = self->_height * self->_width;
//    return boxVolume;
//}

@end


