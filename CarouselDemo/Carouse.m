//
//  Carouse.m
//  CarouselDemo
//
//  Created by houke on 2018/1/16.
//  Copyright © 2018年 houke. All rights reserved.
//

#import "Carouse.h"

@implementation Carouse
{
    CGRect _frame;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initLabelWithFrame:frame];
    }
    return self;
}

-(void)initLabelWithFrame:(CGRect)frame
{
    self.lable = [[UILabel alloc] init];
    self.lable.frame = CGRectMake(0, 0, frame.size.width, frame.size.height/2);
    self.lable.textColor = [UIColor grayColor];
    self.lable.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.lable];
    self.lable.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap)];
    [self.lable addGestureRecognizer:tap];
    
    
    self.lable2 = [[UILabel alloc] init];
    self.lable2.frame = CGRectMake(0,  frame.size.height/2, frame.size.width, frame.size.height/2);
    self.lable2.textColor = [UIColor grayColor];
    self.lable2.backgroundColor = [UIColor redColor];
    [self addSubview:self.lable2];
    self.lable2.userInteractionEnabled = YES;
//    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(labelTap2)];
//    [self.lable2 addGestureRecognizer:tap2];
    
}

-(void)labelTap
{
    if ([self.delegate respondsToSelector:@selector(carouseLabelTap:)]) {
        [self.delegate carouseLabelTap:self.lable.text];
    }
    
}

@end
