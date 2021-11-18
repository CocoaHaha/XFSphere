//
//  XFSphereView.h
//  XFSphereView
//
//  Created by HN-40 on 2021/11/18.
//

#import <UIKit/UIKit.h>

@interface XFSphereView : UIView

@property(nonatomic,assign) BOOL isTimerStart;

- (void)setItems:(NSArray *)items;

- (void)timerStart;

- (void)timerStop;


@end
