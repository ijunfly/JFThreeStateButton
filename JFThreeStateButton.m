//
//  JFThreeStateButton.m
//  Tornado
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 JunFly. All rights reserved.
//

#import "JFThreeStateButton.h"



@interface JFThreeStateButton ()

@end

@implementation JFThreeStateButton

@synthesize threeState = _threeState;
@synthesize images = _images;
@synthesize titles = _titles;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (NSMutableArray<UIImage *> *)images {
    if (!_images) {
        _images = [NSMutableArray arrayWithCapacity:3];
    }
    return _images;
}

- (NSMutableArray<NSString *> *)titles {
    if (!_titles) {
        _titles = [NSMutableArray arrayWithCapacity:3];
    }
    return _titles;
}

- (void)setTitles:(NSMutableArray<NSString *> *)titles {
    if (![_titles isEqualToArray:titles]) {
        _titles = titles;
        
        [self setContentTitleWithState:self.threeState];
    }
}

- (void)setImages:(NSMutableArray<UIImage *> *)images {
    
    if (![_images isEqualToArray:images]) {
        _images = images;
        
        [self setContentImageWithState:self.threeState];
    }
}

- (void)setThreeState:(JFThreeState)threeState {
    if (_threeState != threeState) {
        _threeState = threeState;
        
        [self setContentTitleWithState:threeState];
        [self setContentImageWithState:threeState];
    }
}

- (void)setContentImageWithState:(JFThreeState)threeState {
    UIImage *image = nil;
    if (self.images.count > threeState) {
        image = self.images[threeState];
    }
    [self setImage:image forState:UIControlStateNormal];
}

- (void)setContentTitleWithState:(JFThreeState)threeState {
    NSString *title = nil;
    if (self.titles.count > threeState) {
        title = self.titles[threeState];
    }
    [self setTitle:title forState:UIControlStateNormal];
}

//
//- (void)setTitle:(NSString *)title forThreeState:(JFThreeState)state {
//    [self setTitle:title forState:UIControlStateNormal];
//    [_titles replaceObjectAtIndex:state withObject:title];
//}
//
//- (void)setImage:(UIImage *)image forThreeState:(JFThreeState)state {
//    [self setImage:image forState:UIControlStateNormal];
////    self.images[state] = image;
//    [self.images replaceObjectAtIndex:state withObject:image];
//}







@end
