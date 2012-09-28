//
//  MapaViewController.h
//  Conteudo
//
//  Created by Jether on 28/09/12.
//  Copyright (c) 2012 Jether. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface MapaViewController : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate, UITextFieldDelegate>{
    CLLocationManager *locationManager;
    float oldX, oldY;
    float lat, lng;

}

@property (retain, nonatomic) IBOutlet MKMapView *map;

@property (retain, nonatomic) IBOutlet UITextField *txtLatitude;
@property (retain, nonatomic) IBOutlet UITextField *txtLongitude;
@property (retain, nonatomic) IBOutlet UIView *myview;
@property (retain, nonatomic) IBOutlet UIButton *btnIr;


- (IBAction)btnIr:(id)sender;

@end
