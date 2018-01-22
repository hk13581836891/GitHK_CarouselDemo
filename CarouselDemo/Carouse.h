//
//  Carouse.h
//  CarouselDemo
//
//  Created by houke on 2018/1/16.
//  Copyright © 2018年 houke. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CarouseLabelDelegate<NSObject>

-(void)carouseLabelTap:(NSString *)text;
@end


@interface Carouse : UIView

@property (nonatomic, weak) id <CarouseLabelDelegate> delegate;


@property (nonatomic, strong) UILabel *lable;
@property (nonatomic, strong) UILabel *lable2;
@end
