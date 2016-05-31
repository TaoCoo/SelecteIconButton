//
//  SelectIconButton.h
//  Test00002
//
//  Created by gut on 16/5/31.
//  Copyright © 2016年 com.DSDAI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectIconButton : UIButton

/**
 *  This property is show button's status when it be clicked,default is yes
 */

@property (nonatomic,copy) void(^SelectIconButtonBlock)(BOOL isSelected);

@end
