//
//  ViewController.m
//  FTClient
//
//  Created by Peng Jianqing on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(IBAction)onPostButtonClick{
    [self log:@"onPostButtonClick"];
    
    [inputTweetTextField setText:@""];
    
}

-(IBAction)onGetTimelineButtonClick{
    [self log:@"onGetTimelineButtonClick"];

    
}

-(IBAction)onInputTweetTextFieldChange{
    [self log:@"onInputTweetTextFieldChange"];
    
    [[inputTweetTextField text] length];
    int length=inputTweetTextField.text.length;
    //length=[[inputTweetTextField text] length];
    NSString *string=[NSString stringWithFormat:@"%d/%d",length,MAX_TWEET_COUNT];
    countLabel.text=string;
    //[countLabel setText:string];
    //[timelineTextView setText:inputTweetTextField.text];
    //[self log:inputTweetTextField.text];

}

-(void)log:(NSString *)log{
    NSLog(log);
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
