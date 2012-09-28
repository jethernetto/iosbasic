//
//  ViewController.m
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import "ViewController.h"
#import "UIPageControlViewController.h"
#import "CameraViewController.h"
#import "MapaViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnUIPageControl:(id)sender {
    
    UIPageControlViewController * uiPageControlVC = [[UIPageControlViewController alloc]initWithNibName:@"UIPageControlViewController" bundle:nil];
    
    [self.navigationController pushViewController:uiPageControlVC animated:YES];
    [uiPageControlVC release];
}

- (IBAction)btnCamera:(id)sender {
    CameraViewController * cameraVC = [[CameraViewController alloc]initWithNibName:@"CameraViewController" bundle:nil];
    [self.navigationController pushViewController:cameraVC animated:YES];
    [cameraVC release];
}

- (IBAction)btnMaps:(id)sender {
    MapaViewController * mapaVC = [[MapaViewController alloc]initWithNibName:@"MapaViewController" bundle:nil];
    [self.navigationController pushViewController:mapaVC animated:YES];
    [mapaVC release];
    
}
@end
