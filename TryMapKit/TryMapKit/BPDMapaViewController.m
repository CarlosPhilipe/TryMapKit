//
//  BPDMapaViewController.m
//  TryMapKit
//
//  Created by Carlos Philipe Mendes Bahia on 11/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import "BPDMapaViewController.h"

@interface BPDMapaViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@end

@implementation BPDMapaViewController

@synthesize mapView = _mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"\n\n------TTT");
    locationManage = [[CLLocationManager alloc] init];
    
    locationManage.delegate = self;
    
    NSLog(@"\n\n------passo 1");
    if ([locationManage respondsToSelector:@selector (requestWhenInUseAuthorization)]) {
            NSLog(@"\n\n------passo 2");
        [locationManage requestWhenInUseAuthorization];
            NSLog(@"\n\n------passo 3");
    }
    [locationManage startUpdatingLocation];
    self.mapView.showsUserLocation = YES;
        NSLog(@"\n\n------passo 4");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)requestAlwaysAuthorization
{
        NSLog(@"\n\n------passo 5");
    
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    // If the status is denied or only granted for when in use, display an alert
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse || status == kCLAuthorizationStatusDenied)
    {
        NSString *title;
        title = (status == kCLAuthorizationStatusDenied) ? @"Location services are off" : @"Background location is not enabled";
        NSString *message = @"To use background location you must turn on 'Always' in the Location Services Settings";
        UIAlertView *alertView = [[UIAlertView alloc]
                                  initWithTitle:title
                                  message:message
                                  delegate:self
                                  cancelButtonTitle:@"Cancel"
                                  otherButtonTitles:@"Settings", nil];
    [alertView show];
    }
}

- (IBAction)setMap:(id)sender {
    
    NSLog(@"TTT %ld", _segmentedControl.selectedSegmentIndex);
    
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapView.mapType = MKMapTypeStandard;
            NSLog(@" 0 ");
            break;
        case 1:
            mapView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}



@end
