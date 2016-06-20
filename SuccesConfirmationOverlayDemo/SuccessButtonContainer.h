//
//  SuccessButtonContainer.h
//  SuccesConfirmationOverlayDemo
//


#import <UIKit/UIKit.h>
#import "SuccessButtonAnimation.h"

@interface SuccessButtonContainer : UIView
{
    
    __weak IBOutlet SuccessButtonAnimation *successButton;
    __weak IBOutlet UILabel *lblConfirmationMessage;
    NSTimer *timer;
    CGPoint movePoint;
    CGPoint startPoint;
}

-(void)initWithTime:(float)timerValue withMessage:(NSString *)message;

@end
