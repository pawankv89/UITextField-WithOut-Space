
UITextField WithOut Space
=========

## UITextField WithOut Space.
------------
 Added Some screens here.
 
![](https://github.com/pawankv89/UITextFieldWithOutSpace/blob/master/Screens/1.png)
![](https://github.com/pawankv89/UITextFieldWithOutSpace/blob/master/Screens/2.png)
![](https://github.com/pawankv89/UITextFieldWithOutSpace/blob/master/Screens/3.png)
![](https://github.com/pawankv89/UITextFieldWithOutSpace/blob/master/Screens/4.png)

## Usage
------------
 iOS 9 Demo showing how to droodown on iPhone X Simulator in  Objective-C.


```objective-c
#define ACCEPTABLE_CHARACTERS @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789@_."

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {

if (textField == self.nameTextField) {

NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARACTERS] invertedSet];

NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];

return [string isEqualToString:filtered];
}

return YES;
}


```

```objective-c

```

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
