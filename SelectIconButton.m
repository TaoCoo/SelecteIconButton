//
//  SelectIconButton.m
//  Test00002
//
//  Created by gut on 16/5/31.
//  Copyright © 2016年 com.DSDAI. All rights reserved.
//

#define SelectButtonColor     [UIColor orangeColor]
#define UnSelectButtonColor   [UIColor blackColor]
#define AnimationTimeInterval  0.5f
#define BoundsScale            0.9f

#import "SelectIconButton.h"

@interface SelectIconButton ()

@property (nonatomic, strong) UIImageView *selectView;

@end

@implementation SelectIconButton

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.selected = YES;
        self.backgroundColor = [SelectButtonColor colorWithAlphaComponent:0.2f];
        self.layer.borderWidth   = 3.f;
        self.layer.cornerRadius  = 8.f;
        self.layer.borderColor   = [SelectButtonColor colorWithAlphaComponent:0.5f].CGColor;
        self.layer.masksToBounds = YES;
        [self addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:self.selectView];

    }
    return self;
}

- (UIImageView *)selectView{
    if (!_selectView) {
        _selectView = [[UIImageView alloc] initWithFrame:self.frame];
        _selectView.center = self.center;
        _selectView.image = [UIImage imageNamed:@"c"];
    }
    return _selectView;
}

- (void)buttonClick{
    
    self.selected = !self.selected;
    
    if (self.selected) {
        [self selectSet];
    }else{
        [self unSelectSet];
    }
    
    self.SelectIconButtonBlock(self.selected);
}

#pragma mark - selected state changed

- (void)selectSet{
    
    [UIView animateWithDuration:AnimationTimeInterval animations:^{
        
        self.bounds = CGRectMake(0, 0, self.frame.size.width / BoundsScale, self.frame.size.height / BoundsScale);
        self.backgroundColor = [SelectButtonColor colorWithAlphaComponent:0.2f];
        self.selectView.alpha = 1.f;
        
    }];
}

- (void)unSelectSet{
    
    [UIView animateWithDuration:AnimationTimeInterval animations:^{
        
        self.bounds = CGRectMake(0, 0, self.frame.size.width * BoundsScale, self.frame.size.height * BoundsScale);
        self.backgroundColor = [UnSelectButtonColor colorWithAlphaComponent:0.1f];
        self.selectView.alpha = 0.f;
        
    }];
}

@end
