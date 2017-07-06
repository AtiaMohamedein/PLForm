//
//  PLFormPinAsterisk.m
//  Pods
//
//  Created by Atia Mohamedein on 7/6/17.
//
//

#import "PLFormPinAsterisk.h"

#import "PLFormPinAsterisk.h"

@implementation PLFormPinAsterisk{
    UITextField* texfield;
    
}

-(void)setup
{
    
    self.state = PLPinAsteriskStateUnselected;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}


-(void)layoutSubviews
{
    [super layoutSubviews];
    texfield = [[UITextField alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    texfield.backgroundColor = [UIColor clearColor];
    texfield.textAlignment = NSTextAlignmentCenter;
    texfield.textColor = [UIColor whiteColor];
    texfield.font = [UIFont fontWithName:@"OpenSans" size:25];
    texfield.text = @"";
    [self addSubview:texfield];
}


-(void)setState:(PLPinAsteriskState)state
{
    [self setState:state animated:NO];
}

-(void)setState:(PLPinAsteriskState)state animated:(BOOL)animated
{
    _state = state;
    
    void (^stateBlock)() = ^{
        switch (_state) {
                
            case PLPinAsteriskStateUnselected:
                texfield.text = @"";
                break;
            case PLPinAsteriskStateHighlighted:
                texfield.text = @"";
                
                break;
            case PLPinAsteriskStateSelected:
                texfield.text = @"*";
                
                break;
            default:
                break;
        }
    };
    
    if (animated)
    {
        [UIView animateWithDuration:0.3f
                              delay:0.0f
                            options:UIViewAnimationOptionBeginFromCurrentState|UIViewAnimationOptionCurveEaseOut
                         animations:stateBlock
                         completion:nil];
    }
    else
    {
        stateBlock();
    }
}

@end
