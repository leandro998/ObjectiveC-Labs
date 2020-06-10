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
    float _height;
    float _width;
    float _length;
}

- (instancetype)initWithHeight: (float) height andWidth: (float) width andLength: (float) length {
  self = [super init];
  if (self) {
      _height = height;
      _width = width;
      _length = length;
  }
  return self;
}

- (float) height {
    return _height;
}

- (float) width {
    return _width;
}

- (float) length {
    return _length;
}

- (float) boxVolume {
    float boxVolume = _height * _width * _length;
    return boxVolume;
}

- (int) howManyBoxes: (Box *) box {
    float myBox = [self boxVolume];
    float otherBox = [box boxVolume];
    if (myBox > otherBox){
        return 0;
    }
    return (int) otherBox / myBox;
}

@end


