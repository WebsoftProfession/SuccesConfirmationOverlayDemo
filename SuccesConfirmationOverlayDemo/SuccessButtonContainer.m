//
//  SuccessButtonContainer.m
//  SuccesConfirmationOverlayDemo


#import "SuccessButtonContainer.h"

@implementation SuccessButtonContainer

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)initWithTime:(float)timerValue withMessage:(NSString *)message
{
    lblConfirmationMessage.text=message;
    successButton.layer.cornerRadius=successButton.frame.size.width/2;
    successButton.layer.borderColor=[UIColor whiteColor].CGColor;
    successButton.layer.borderWidth=2.0;
    movePoint.x=(successButton.frame.size.width*32)/100;
    movePoint.y=(successButton.frame.size.width*48)/100;
    startPoint.x=2;
    startPoint.y=2;
    
    self.alpha=0.1;
    //successButton.alpha=0.0;
    //lblConfirmationMessage.alpha=0.0;
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.alpha=1.0;
        
        
    } completion:^(BOOL finished) {
        
        timer=[NSTimer scheduledTimerWithTimeInterval:timerValue target:self selector:@selector(updateButton:) userInfo:nil repeats:YES];
        
        
    }];
    
    
    
    
}

-(void)updateButton:(NSTimer *)timerObject
{
    if (movePoint.y<(successButton.frame.size.width*32)/100) {
        
        [timer invalidate];
        timer=nil;
    }
    else
    {
        if (movePoint.x>(successButton.frame.size.width*48)/100) {
            
            movePoint.x+=1.7;
            movePoint.y-=startPoint.y;
            [successButton updateSecondLineWithEndPoint:movePoint];
            [successButton setNeedsDisplay];
            
            [UIView animateWithDuration:0.02 animations:^{
                
                successButton.alpha=1.0;
                
            }];
        }
        else
        {
            movePoint.x+=startPoint.x;
            movePoint.y+=startPoint.y;
            [successButton updatePointWithMovePoint:movePoint withEndPoint:movePoint];
            [successButton setNeedsDisplay];
            
            [UIView animateWithDuration:0.02 animations:^{
                
                successButton.alpha=0.5;
                
            }];
        }
    }
}


@end
