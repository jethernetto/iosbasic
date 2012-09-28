//
//  UIPageControlViewController.m
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import "UIPageControlViewController.h"

@interface UIPageControlViewController ()

@end

@implementation UIPageControlViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [self.scroll setContentSize:CGSizeMake(320*3, self.scroll.frame.size.height)];
    
    [self.scroll setPagingEnabled:YES];
    
    [self.pageControl setNumberOfPages:self.scroll.contentSize.width / self.scroll.frame.size.width];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    float pageWidth = self.scroll.frame.size.width;
    
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    
    [self.pageControl setCurrentPage:page];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_scroll release];
    [_pageControl release];
    [super dealloc];
}
@end
