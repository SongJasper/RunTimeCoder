//
//  ViewController.m
//  change
//
//  Created by 宋金峰 on 16/3/25.
//  Copyright © 2016年 宋金峰. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *mainView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *height;
@property (nonatomic, assign) BOOL open;

@end
@implementation UIView (touch)

//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self performSelector:@selector(changeit) withObject:nil];
//}
- (void)changeit{
    [UIView animateWithDuration:0.2 animations:^{
        
//        CGRect rect = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height * 3);
//        self.frame = rect;
    }];
    
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    CGRect rect = CGRectMake(_mainView.frame.origin.x, _mainView.frame.origin.y, _mainView.frame.size.width, _mainView.frame.size.height * 3);
//    _mainView.frame = rect;
    _open = !_open;
    if (!_open) {
        _height.constant = 50;
        // 展开
        
    }else{
        _height.constant = 200;
    }
   
}
- (void)layoutSublayersOfLayer:(CALayer *)layer
{
    [super layoutSublayersOfLayer:layer];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
