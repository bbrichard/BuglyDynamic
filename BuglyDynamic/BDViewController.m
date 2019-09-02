//
//  BDViewController.m
//  BuglyDynamic
//
//  Created by Richard on 2/9/2019.
//  Copyright © 2019 seektop. All rights reserved.
//

#import "BDViewController.h"
#import "BuglyDynamic.h"
@interface BDViewController ()

@end

@implementation BDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *bid = [Bugly buglyDeviceId];
    NSLog(@"big: %@",bid);
    
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
