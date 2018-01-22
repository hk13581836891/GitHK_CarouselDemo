//
//  ViewController.m
//  CarouselDemo
//
//  Created by houke on 2018/1/16.
//  Copyright © 2018年 houke. All rights reserved.
//

#import "ViewController.h"
#import "Carouse.h"

#define ScreenWidth [UIScreen mainScreen].bounds.size.width

@interface ViewController ()<UIScrollViewDelegate,CarouseLabelDelegate>
{
    UIScrollView *scrollView;
    int index;
    NSTimer *timer;
    Carouse *carouse;
    NSArray *array;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    index = 0;
    array = @[@"第一个", @"第二个", @"第三个", @"第四个", @"第五个"];
    carouse = [[Carouse alloc] initWithFrame:CGRectMake(0, 100, 200, 80)];
    carouse.delegate = self;
    carouse.lable.text = array[0];
    carouse.lable2.text = array[1];
    [self.view addSubview:carouse];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(scrollViewCarouse) userInfo:nil repeats:YES];
    
    return;
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)carouseLabelTap:(NSString *)text
{
    NSLog(@"----%@----",text);
}

-(void)scrollViewCarouse
{
    
    NSString *textStr;
    NSString *textStr1;
    
   
    
    if (index == (array.count -1)) {
    
        textStr = array [index];
        textStr1 = array[0];
        index = 0;
        
    }else{
        textStr = array [index];
        textStr1 = array[index+1];
        index++;
    }
   

    carouse.lable.text = textStr;
    carouse.lable2.text = textStr1;

//    NSLog(@"carouse.str:%@", array[index]);
    
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
