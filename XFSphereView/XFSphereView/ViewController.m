//
//  ViewController.m
//  XFSphereView
//
//  Created by HN-40 on 2021/11/18.
//

#import "ViewController.h"
#import "XFSphereView.h"


@interface ViewController ()

@property (nonatomic,strong) XFSphereView *sphereView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    CGFloat sphereViewW = self.view.frame.size.width - 30 * 2;
    CGFloat sphereViewH = sphereViewW;
    _sphereView = [[XFSphereView alloc] initWithFrame:CGRectMake(30, 100, sphereViewW, sphereViewH)];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    for (NSInteger i = 0; i < 60; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:[NSString stringWithFormat:@"XF%ld", i] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor colorWithRed:arc4random_uniform(255)/255. green:arc4random_uniform(255)/255. blue:arc4random_uniform(255)/255. alpha:1.];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:24.];
        btn.frame = CGRectMake(0, 0, 60, 30);
        btn.layer.cornerRadius = 3;
        btn.clipsToBounds = YES;
        btn.tag = i;
        [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [array addObject:btn];
        [_sphereView addSubview:btn];
    }
    [_sphereView setItems:array];
    [self.view addSubview:self.sphereView];
    
}

- (void)buttonPressed:(UIButton *)btn
{
    [self.sphereView timerStop];
    NSLog(@"点击了%ld号Button",(long)btn.tag);
    
    [UIView animateWithDuration:0.3 animations:^{
        btn.transform = CGAffineTransformMakeScale(2., 2.);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{
            btn.transform = CGAffineTransformMakeScale(1., 1.);
        } completion:^(BOOL finished) {
            [self.sphereView timerStart];
        }];
    }];
}


@end
