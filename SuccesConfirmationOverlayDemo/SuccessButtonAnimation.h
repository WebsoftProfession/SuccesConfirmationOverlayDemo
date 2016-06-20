//
//  SuccessButtonAnimation.h
//  SuccesConfirmationOverlayDemo
//


#import <UIKit/UIKit.h>

@interface SuccessButtonAnimation : UIView
{
    CGPoint movePoint;
    CGPoint startPoint;
    CGPoint endPoint;
    
    CGPoint secondEndPoint;
}

-(void)updatePointWithMovePoint:(CGPoint )move withEndPoint:(CGPoint)end;
-(void)updateSecondLineWithEndPoint:(CGPoint)second;

@end
