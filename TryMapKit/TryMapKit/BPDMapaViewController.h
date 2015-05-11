//
//  BPDMapaViewController.h
//  TryMapKit
//
//  Created by Carlos Philipe Mendes Bahia on 11/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface BPDMapaViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate>{
    CLLocationManager * locationManage;
    MKMapView * mapView;
}

@property(strong, nonatomic) IBOutlet MKMapView * mapView;

- (IBAction)setMap:(id)sender;

@end
