//
//  UIPageControlViewController.h
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIPageControlViewController : UIViewController<UIScrollViewDelegate>
@property (retain, nonatomic) IBOutlet UIScrollView *scroll;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;

@end
