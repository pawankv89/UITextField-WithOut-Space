//
//  ViewController.m
//  UITextFieldWithOutSpace
//
//  Created by Pawan kumar on 12/5/17.
//  Copyright © 2017 Pawan Kumar. All rights reserved.
//

#import "ViewController.h"

#define ACCEPTABLE_CHARACTERS @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@_."

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) IBOutlet UITextField *nameTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Border Style
    [self.nameTextField setBorderStyle:UITextBorderStyleLine];
    [self.nameTextField setDelegate:self];
    
    //Hide Keyboard
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tap];
    self.view.userInteractionEnabled = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard{
    
    //Default Components
    [self.nameTextField resignFirstResponder];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {
    
    if (textField == self.nameTextField) {
        
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS] invertedSet];
        
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        
        return [string isEqualToString:filtered];
    }
    
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    return YES;
}

- (BOOL) textFieldShouldEndEditing:(UITextField*)textField
{
    //First Char Capital
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    //First Char Capital
    textField.autocapitalizationType = UITextAutocapitalizationTypeNone;

    [self dismissKeyboard ];
    
    return YES;
}

@end
