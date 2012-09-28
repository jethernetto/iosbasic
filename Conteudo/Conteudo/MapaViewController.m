//
//  MapaViewController.m
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import "MapaViewController.h"


@interface MapaViewController ()

@end

@implementation MapaViewController

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
    
    locationManager = [[CLLocationManager alloc]init];
    [locationManager setDelegate:self];
    [locationManager startUpdatingLocation];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation{
    
    lat = newLocation.coordinate.latitude;
    lng = newLocation.coordinate.longitude;
    
    [self setLocation:lat and:lng withDelta:.01];
    [locationManager stopUpdatingLocation];
    [locationManager release];
    locationManager = nil;
    
    [self.txtLatitude setText:[NSString stringWithFormat:@"%f",lat]];
    [self.txtLongitude setText:[NSString stringWithFormat:@"%f",lng]];
    
}

- (void) setLocation:(float)latitude and:(float)longitude withDelta:(float)delta {
    CLLocationCoordinate2D center;
    center.latitude = latitude;
    center.longitude = longitude;
    
    MKCoordinateRegion region;
    
    MKCoordinateSpan span;
	span.latitudeDelta=delta;
	span.longitudeDelta=delta;
	region.span=span;
    
    region.center = center;
    
    [self.map setRegion:region animated:YES];
    
}


- (void)textFieldDidBeginEditing:(UITextField *)textField{
    [self.myview setFrame:CGRectMake(0, self.myview.frame.origin.y - 216, self.myview.frame.size.width, self.myview.frame.size.height)];
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    [self.myview setFrame:CGRectMake(0, self.myview.frame.origin.y + 216, self.myview.frame.size.width, self.myview.frame.size.height)];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

// became first responder

- (void)dealloc {
    [_map release];
    [_txtLatitude release];
    [_txtLongitude release];
    [_myview release];
    [_btnIr release];
    [super dealloc];
}
- (IBAction)btnIr:(id)sender {
    
    float latitude = [self.txtLatitude.text floatValue];
    float longitude = [self.txtLongitude.text floatValue];
    
    [self setLocation:latitude and:longitude withDelta:0.01];
    
    
}
@end
