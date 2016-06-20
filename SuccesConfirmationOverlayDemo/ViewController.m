//
//  ViewController.m
//  SuccesConfirmationOverlayDemo


#import "ViewController.h"
#import "SuccessButtonContainer.h"

@interface ViewController ()
{
    NSTimer *timer;
    CGPoint movePoint;
    CGPoint endPoint;
    CGPoint startPoint;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SuccessButtonContainer *containerView = [[[NSBundle mainBundle] loadNibNamed:@"SuccessButtonContainer" owner:self options:nil] lastObject];
    containerView.frame=self.view.bounds;
    [containerView initWithTime:0.02 withMessage:@"Video uploading successful."];
    [self.view addSubview:containerView];
    
    
//    movePoint.x=(successButton.frame.size.width*32)/100;
//    movePoint.y=(successButton.frame.size.width*48)/100;
//    startPoint.x=2;
//    startPoint.y=2;
//    endPoint.x=100;
//    endPoint.y=100;
//    
//    successButton.layer.cornerRadius=successButton.frame.size.width/2;
//    successButton.layer.borderColor=[UIColor whiteColor].CGColor;
//    successButton.layer.borderWidth=2.0;
    
//    timer=[NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(updateButton:) userInfo:nil repeats:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

//-(void)updateButton:(NSTimer *)timerObject
//{
//    if (movePoint.y<(successButton.frame.size.width*32)/100) {
//        
//        [timer invalidate];
//        timer=nil;
//    }
//    else
//    {
//        if (movePoint.x>(successButton.frame.size.width*48)/100) {
//            
//            movePoint.x+=1.8;
//            movePoint.y-=startPoint.y;
//            [successButton updateSecondLineWithEndPoint:movePoint];
//            [successButton setNeedsDisplay];
//            
//            [UIView animateWithDuration:0.02 animations:^{
//                
//                successButton.alpha=1.0;
//                
//            }];
//        }
//        else
//        {
//            movePoint.x+=startPoint.x;
//            movePoint.y+=startPoint.y;
//            [successButton updatePointWithMovePoint:movePoint withEndPoint:movePoint];
//            [successButton setNeedsDisplay];
//            
//            [UIView animateWithDuration:0.02 animations:^{
//                
//                successButton.alpha=0.5;
//                
//            }];
//        }
//    }
//    
//
//    
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
