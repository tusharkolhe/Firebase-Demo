//
//  ViewController.h
//  TKFirebaseDemo
//
//  Created by Felix ITs 04 on 24/10/16.
//  Copyright © 2016 Tushar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Firebase/Firebase.h>
#import <FirebaseDatabase/FirebaseDatabase.h>
@import FirebaseDatabase;


@interface ViewController : UIViewController
{
    
    FIRDatabase *firebaseDatabase;
    FIRDatabaseReference *fireabseRef;
    
    
}


@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)buttonSave:(id)sender;

@end

