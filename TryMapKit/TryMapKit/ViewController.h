//
//  ViewController.h
//  TryMapKit
//
//  Created by Carlos Philipe Mendes Bahia on 09/05/15.
//  Copyright (c) 2015 Carlos Philipe Mendes Bahia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController{
    MKMapView * mapView;
}

@property(strong, nonatomic) IBOutlet MKMapView * mapView;

@end

