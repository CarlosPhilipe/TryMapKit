//
//  BPDMapaViewController.h
//  TryMapKit
//
//  Created by Carlos Philipe Mendes Bahia on 11/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import <UIKit/UIKit.h>
@import MapKit;

@interface BPDMapaViewController : UIViewController <UIApplicationDelegate, MKMapViewDelegate>

@property(strong, nonatomic) IBOutlet MKMapView *mapView;
@property(nonatomic, strong) CLLocationManager *coreLocation;

@end
