//
//  ViewController.m
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _fileCheck = 0;
    _colorCheck = 0;
    _buttonPosition = 0;
}


- (IBAction)changeColorButton:(id)sender {
    if (_colorCheck == 0)
        {
        [_Button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            _colorCheck = 1;
        }
    else
        {
        [_Button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
            _colorCheck = 0;
        }
}
- (IBAction)colorizeButton:(id)sender {
    
    UIImage *colorLogo = [UIImage imageNamed:@"MobileMakersLogo_color.png"];
    UIImage *bwLogo = [UIImage imageNamed:@"MobileMakersLogo_black_and_white.png"];
    
    if (_fileCheck == 0) {
        [_imageView setImage:colorLogo];
        _fileCheck = 1;
        [_Button5 setTitle:@"Decolor!" forState: UIControlStateNormal];
    } else {
        [_imageView setImage:bwLogo];
        _fileCheck = 0;
        [_Button5 setTitle:@"Colorize!" forState: UIControlStateNormal];
    }
}

- (IBAction)sliding:(id)sender {
    [_slideValue setText: [NSString stringWithFormat:@"%.2f", _slider.value]];
}

- (IBAction)moveAndResizeButton:(id)sender {
    //Insert check position here
    if (_buttonPosition == 0)
    {
    _Button2.frame = CGRectMake(10,75,300,60);
        _buttonPosition = 1;
    } else {
        _Button2.frame = CGRectMake(40, 68, 260, 30);
        _buttonPosition = 0;
    }
}

- (IBAction)toggleButton:(id)sender {
    if ([_Button3.titleLabel.text isEqual:@"On"])
    {
        [_Button3 setTitle:@"Off" forState:UIControlStateNormal];
    } else
    {
        [_Button3 setTitle:@"On" forState:UIControlStateNormal];
    }
}

- (IBAction)slider:(id)sender {
}

- (IBAction)Button4:(id)sender {
    
    [self.view endEditing:YES];
    
    int x = _textField1.text.intValue;
    int y = _textField2.text.intValue;
    int sum = x + y;
    NSString *textSum = [NSString stringWithFormat:@"%d", sum];
    _sumLabel.text = textSum ;
}
@end
