//
//  ContentView.m
//  OnBoardingApp
//
//  Created by Mohamed El Hanafi on 08/02/2018.
//  Copyright © 2018 Mohamed El Hanafi. All rights reserved.
//

#import "ContentView.h"

@implementation ContentView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)initWithTitle:(NSString*)title frame:(CGRect)frame {
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ContentView" owner:self options:nil];
    self = [nib objectAtIndex:0];
    if (self) {
        self.frame=frame;
        _title.text=title;
    }
    return self;
}
@end
