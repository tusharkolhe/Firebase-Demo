//
//  ViewController.m
//  TKFirebaseDemo
//
//  Created by Felix ITs 04 on 24/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)createDatabase
{
    NSString *userName=self.userNameTextField.text;
    NSString *password=self.passwordTextField.text;
    
    NSDictionary *dataDictionary=@{
                                   @"user_Name":userName,
                                   @"password":password };
    
    firebaseDatabase=[FIRDatabase database];
    
    [firebaseDatabase setPersistenceEnabled:YES];
    
    fireabseRef = [firebaseDatabase reference];
    
    [fireabseRef keepSynced:YES];
    
    [[[fireabseRef child:@"Login"]childByAutoId]setValue:dataDictionary withCompletionBlock:^(NSError * _Nullable error, FIRDatabaseReference * _Nonnull ref) {
        ///code for error
        
    }];
    
    
    
    
    
}


- (IBAction)buttonSave:(id)sender {
    [self createDatabase];
}
@end
