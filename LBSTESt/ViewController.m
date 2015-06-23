//
//  ViewController.m
//  LBSTESt
//
//  Created by will on 14-9-15.
//  Copyright (c) 2014年 will. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CLGeocoder* gecoder = [[CLGeocoder alloc] init];
    [gecoder geocodeAddressString:@"北京" completionHandler:^(NSArray *placemarks, NSError *error) {
       
        if (nil == error && 0 < [placemarks count] ) {
            
            CLPlacemark *placemark = [placemarks objectAtIndex:0];
            
            CLLocationCoordinate2D coordinate2D = placemark.location.coordinate;
            
            NSLog(@"经度 = %f 纬度 = %f",coordinate2D.longitude,coordinate2D.latitude);
        }
    }];
    
}


@end
