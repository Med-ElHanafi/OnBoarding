//
//  ViewController.m
//  OnBoardingApp
//
//  Created by Mohamed El Hanafi on 08/02/2018.
//  Copyright © 2018 Mohamed El Hanafi. All rights reserved.
//

#import "ViewController.h"
#import "ContentView.h"
@interface ViewController ()<UIScrollViewDelegate>
{
    NSArray *data;
    NSArray *colors;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:0.0/255.0f green:128.0/255.0f blue:128.0/255.0f alpha:1.0f];
    data=[NSArray arrayWithObjects:@"Hello",@"Salut",@"Holla",@"Ciao", nil];
    colors=[NSArray arrayWithObjects:[UIColor colorWithRed:0.0/255.0f green:128.0/255.0f blue:128.0/255.0f alpha:1.0f],[UIColor purpleColor],[UIColor grayColor],[UIColor colorWithRed:0.0/255.0f green:107.0/255.0f blue:44.0/255.0f alpha:1.0f], nil];
    self.scrollView.delegate=self;
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    if ([self.scrollView.subviews count]<=0) {
        [self.view layoutIfNeeded];
        [self setTheScrollView];
    }
}
-(void)setTheScrollView{
    CGFloat offset=0.0;
    for (int i=0; i<data.count; i++) {
        ContentView *theView=[[ContentView alloc]initWithTitle:data[i] frame:self.view.frame];
        offset = self.view.frame.size.width*i;
        
        theView.frame=CGRectMake(offset, theView.frame.origin.y, theView.frame.size.width, theView.frame.size.height);
        self.scrollView.contentSize=CGSizeMake(theView.frame.size.width * (i + 1), self.scrollView.frame.size.height);
        [self.scrollView addSubview:theView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat pageWidth = self.scrollView.frame.size.width;
    float fPage = self.scrollView.contentOffset.x / pageWidth;
    NSInteger page = lround(fPage);
    self.pageControl.currentPage = page;
    [UIView animateWithDuration:0.5 animations:^{
        self.view.backgroundColor=colors[page];
        //self.scrollView.subviews[page].backgroundColor=colors[page];
    }];
    

}
@end
