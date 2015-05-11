//
//  BPDMapaViewController.m
//  TryMapKit
//
//  Created by Carlos Philipe Mendes Bahia on 11/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import "BPDMapaViewController.h"

@interface BPDMapaViewController ()

@end

@implementation BPDMapaViewController

@synthesize mapView = _mapview;

- (void)viewDidLoad {
    [super viewDidLoad];
    localizationManage = [[CLLocationManager alloc] init];
    localizationManage.delegate = self;
    if ([localizationManage respondsToSelector:@selector (requestWhenInUseAuthorization)]) {
        [localizationManage requestWhenInUseAuthorization];
    }
    [localizationManage startUpdatingLocation];
    self.mapView.showsUserLocation = YES;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)requestAlwaysAuthorization
{
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
