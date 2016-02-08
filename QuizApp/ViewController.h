//
//  ViewController.h
//  QuizApp
//
//  Created by Haruka on 2016/01/27.
//  Copyright © 2016年 Haruka.Shida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(IBAction)showQuestion;   //次の問題へ行く
-(IBAction)nextQuestion:(id)sender;   //次の問題へ行く
-(IBAction)backQuestion:(id)sender;   //次の問題へ行く
-(IBAction)chooseAnswer:(id)sender; //回答を選択する
-(IBAction)judgeGrade:(id)sender;   //正答率を元に評価を表示する
-(IBAction)calData:(id)sender;  //正答率を計算する
@property(nonatomic,weak) IBOutlet UITextView *question;
@property(nonatomic,weak) IBOutlet UILabel *grade;
@property(nonatomic,weak) IBOutlet UILabel *percentage;
@property(nonatomic,weak) IBOutlet UIButton *correct;
@property(nonatomic,weak) IBOutlet UIButton *incorrect;
@property(nonatomic,weak) IBOutlet UIButton *next;
@property(nonatomic,weak) IBOutlet UIButton *back;


@end

