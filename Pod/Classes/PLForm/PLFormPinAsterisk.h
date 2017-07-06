//
//  PLFormPinAsterisk.h
//  Pods
//
//  Created by Atia Mohamedein on 7/6/17.
//
//
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    PLPinAsteriskStateUnselected,
    PLPinAsteriskStateHighlighted,
    PLPinAsteriskStateSelected,
} PLPinAsteriskState;


@interface PLFormPinAsterisk : UIView

@property (nonatomic, assign) PLPinAsteriskState state;


-(void)setState:(PLPinAsteriskState)state animated:(BOOL)animated;

@end
