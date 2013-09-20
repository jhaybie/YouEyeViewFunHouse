//
//  ViewController.h
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property int fileCheck;
@property int colorCheck;
@property int buttonPosition;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *Button5;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
- (IBAction)Button4:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *Button3;
@property (weak, nonatomic) IBOutlet UIButton *Button2;
@property (weak, nonatomic) IBOutlet UIButton *Button1;
- (IBAction)colorizeButton:(id)sender;
- (IBAction)sliding:(id)sender;
- (IBAction)moveAndResizeButton:(id)sender;
- (IBAction)toggleButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *slideValue;
- (IBAction)changeColorButton:(id)sender;
@end
