//
//  ContentView.h
//  OnBoardingApp
//
//  Created by Mohamed El Hanafi on 08/02/2018.
//  Copyright © 2018 Mohamed El Hanafi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentView : UIView
@property (weak, nonatomic) IBOutlet UILabel *title;
-(id)initWithTitle:(NSString*)title frame:(CGRect)frame color:(UIColor*)color;
@end
