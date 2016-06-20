//
//  SuccessButtonAnimation.m
//  SuccesConfirmationOverlayDemo
//


#import "SuccessButtonAnimation.h"

@implementation SuccessButtonAnimation

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 
 */


- (void)drawRect:(CGRect)rect {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    UIBezierPath *path2 = [UIBezierPath bezierPath];

        
    
    if (endPoint.x==0 & endPoint.y==0) {
        
        [path moveToPoint:CGPointMake((self.frame.size.width*32)/100, (self.frame.size.width*48)/100)];
        
        [path addLineToPoint:CGPointMake((self.frame.size.width*32)/100, (self.frame.size.width*48)/100)];
    }
    else
    {
        [path moveToPoint:CGPointMake((self.frame.size.width*32)/100, (self.frame.size.width*48)/100)];
        [path addLineToPoint:CGPointMake(endPoint.x, endPoint.y)];
    }
    
        path.lineWidth = 3;
        [[UIColor whiteColor] setStroke];
        [path stroke];
 

    if (endPoint.x>(self.frame.size.width*48)/100) {
        
//        [path2 moveToPoint:CGPointMake(((self.frame.size.width*32)/100)+1, ((self.frame.size.width*48)/100)+1)];
        [path2 moveToPoint:CGPointMake(((self.frame.size.width*48)/100)+1, ((self.frame.size.width*64)/100)+1)];
        if (secondEndPoint.x==0 && secondEndPoint.y==0) {
            
            [path2 addLineToPoint:CGPointMake(61, 81)];
        }
        else
        {
            [path2 addLineToPoint:CGPointMake(secondEndPoint.x, secondEndPoint.y)];
            
        }
        
        
        path2.lineWidth = 3;
        [path2 setLineCapStyle:kCGLineCapRound];
        [[UIColor whiteColor] setStroke];
        [path2 stroke];
    }
    
    
}

-(void)updatePointWithMovePoint:(CGPoint )move withEndPoint:(CGPoint)end
{
    movePoint=move;
    endPoint=end;
}

-(void)updateSecondLineWithEndPoint:(CGPoint)second
{
    secondEndPoint=second;
}


@end
