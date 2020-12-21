//
//  RootViewController.m
//  Configuration
//
//  Created by Joan Barrull on 21/12/2020.
//  Copyright © 2020 Joan Barrull. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@property (strong, nonatomic) IBOutlet UITextField *backEndURL;
@property (strong, nonatomic) IBOutlet UITextField *appVersion;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
  NSString *backEnd =  [ [[[NSBundle mainBundle] infoDictionary] objectForKey:@"BackEnd"] stringByReplacingOccurrencesOfString:@"\\" withString:@""];
    NSLog(@" Backend = %@", backEnd);
    NSString *version =   [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
       NSLog(@" Version = %@", version);
    
    
    self.backEndURL.text = backEnd;
    self.appVersion.text = version;
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
