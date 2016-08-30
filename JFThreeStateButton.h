//
//  JFThreeStateButton.h
//  Tornado
//
//  Created by apple on 16/8/29.
//  Copyright © 2016年 JunFly. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, JFThreeState) {
    JFThreeStateNormalEmpty   = 0,
    JFThreeStateNormalPortion = 1,
    JFThreeStateNormalAll     = 2,
};


@interface JFThreeStateButton : UIButton

/** 
 JFThreeStateNormalEmpty   = 0,
 JFThreeStateNormalPortion = 1,
 JFThreeStateNormalAll     = 2, */
@property (assign, nonatomic) JFThreeState threeState;


@property (strong, nonatomic) NSMutableArray<UIImage *> *images;
@property (strong, nonatomic) NSMutableArray<NSString *> *titles;

//- (void)setTitle:(NSString *)title forThreeState:(JFThreeState)state;
//
//- (void)setImage:(UIImage *)image forThreeState:(JFThreeState)state;


@end
