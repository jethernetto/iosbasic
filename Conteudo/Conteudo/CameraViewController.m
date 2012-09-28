//
//  CameraViewController.m
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

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
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)abrirCamera:(id)sender {
    
    UIImagePickerController * imgPickerController = [[UIImagePickerController alloc]init];
    [imgPickerController setDelegate:self];
    [imgPickerController setSourceType:UIImagePickerControllerSourceTypeCamera];
    
    [self presentViewController:imgPickerController animated:YES completion:^{
       //Bloco...
    }];
}

- (IBAction)abrirAlbum:(id)sender {
     UIImagePickerController * imgPickerController = [[UIImagePickerController alloc]init];
    [imgPickerController setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [self presentViewController:imgPickerController animated:YES completion:^{
        //Bloco...
    }];
    
   }

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * image = [info objectForKey:UIImagePickerControllerOriginalImage];
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    [self dismissViewControllerAnimated:YES completion:^{
      //Bloco
        
        //Tira fota e salva no album
    }];
    
    
}

@end
