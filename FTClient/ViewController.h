//
//  ViewController.h
//  FTClient
//
//  Created by Peng Jianqing on 3/28/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MAX_TWEET_COUNT 140

@interface ViewController : UIViewController{
    IBOutlet UITextField *usernameTextField;
    IBOutlet UITextField *passwdTextField;
    IBOutlet UITextField *inputTweetTextField;
    IBOutlet UIButton *postTweetButton;
    IBOutlet UIButton *getTimelineButton;
    IBOutlet UIProgressView *progressview;
    IBOutlet UITextView *timelineTextView;
    IBOutlet UILabel *countLabel;
}
-(IBAction)onPostButtonClick;
-(IBAction)onGetTimelineButtonClick;
-(IBAction)onInputTweetTextFieldChange;
-(IBAction)log:(NSString *)log;




@end
