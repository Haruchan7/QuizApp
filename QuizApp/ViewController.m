//
//  ViewController.m
//  QuizApp
//
//  Created by Haruka on 2016/01/27.
//  Copyright © 2016年 Haruka.Shida. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    UITextView *question;
    UILabel *grade;
    UILabel *percentage;
    UIButton *back;
    UIButton *next;
    UIButton *correct;
    UIButton *incorrect;
    int num;
    int cnt;
    BOOL judge;
}

@end

@implementation ViewController

- (void)setupParts{
    self.question.text =@"クイズタイトル";
    question.textAlignment = NSTextAlignmentCenter;

    question.backgroundColor = [UIColor clearColor];
    //[self.view addSubview:question];

    self.grade.text =@"評価が入ります。";
    grade.textAlignment = NSTextAlignmentLeft;
    grade.backgroundColor = [UIColor clearColor];
    [self.view addSubview:grade];

    percentage.text =@"正答率が入ります。";
    percentage.textAlignment = NSTextAlignmentLeft;
    percentage.backgroundColor = [UIColor clearColor];
    [self.view addSubview:percentage];

    correct = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:correct];
    cnt  = 1;
    
    incorrect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:incorrect];
    cnt = 0;
    
    next = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [next addTarget:self action:@selector(nextQuestion:) forControlEvents:UIControlEventTouchUpInside];

    back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back addTarget:self action:@selector(backQuestion:) forControlEvents:UIControlEventTouchUpInside];

}


- (IBAction)nextQuestion:(id)sender{
    NSLog(@"nextQuestionを実行します");
    //次の問題へ遷移する
    switch (num) {
        case 1:
            self.question.text = @"question1";
            //↑と書かないで、問題文を表示させるメソッドを呼びたい、、、
            //[self showQuestion]??????????????????????????????
            [self.view addSubview:question];
            //backボタンを表示しない
            back.hidden;
            break;
        case 2:
            self.question.text = @"question2";
            [self.view addSubview:question];
            break;
        case 3:
            self.question.text = @"question3";
            break;
        case 4:
            self.question.text = @"question4";
            break;
        case 5:
            self.question.text = @"question5";
            break;
        default:
            break;
    }
    num ++;
    [self.view addSubview:back];
}


- (IBAction)backQuestion:(id)sender{
    NSLog(@"backQuestionを実行します");
    switch (num) {
        case 1:
            [self setupParts];
            num = 2;
            break;
        case 2:
            self.question.text = @"問題2";
            [self.view addSubview:question];
            break;
        case 3:
            self.question.text = @"問題3";
            [self.view addSubview:question];
            break;
        case 4:
            self.question.text = @"問題4";
            [self.view addSubview:question];
            break;
        case 5:
            self.question.text = @"問題5";
            [self.view addSubview:question];
            break;
        default:
            break;
    }
    num --;
}


- (IBAction)showQuestion:(id)sender{
    switch (num) {
        case 1:
            question.text = @"問題文1";
            break;
        case 2:
            question.text = @"問題文2";
            break;
        case 3:
            question.text = @"問題文3";
            break;
        case 4:
            question.text = @"問題文4";
            break;
        case 5:
            question.text = @"問題文5";
            break;
        default:
            break;
    }
    [self.view addSubview:question];
}


- (void)chooseAnswer:(id)sender{
    //回答を選択する
    judge = 1;
    if(cnt = 0){
        judge = false;
    }
}

- (void)judgeGrade:(id)sender{
    //選択肢を元に正解を判断する
    switch (num) {
        case 1:
            if (judge == true) {
                grade.text = @"正解";
            }
            grade.text = @"不正解";
            break;
        case 2:
            if (judge == true) {
                grade.text = @"正解";
            }
            grade.text = @"不正解";
            break;
        case 3:
            if (judge == true) {
                grade.text = @"正解";
            }
            grade.text = @"不正解";
            break;
        case 4:
            if (judge == true) {
                grade.text = @"正解";
            }
            grade.text = @"不正解";
            break;
        case 5:
            if (judge == true) {
                grade.text = @"正解";
            }
            grade.text = @"不正解";
            break;
        default:
            break;
    }
    [self.view addSubview:grade];
}

- (void)calData:(id)sender{
    //正答率を計算する

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupParts];
//    [self showQuestion];
    num = 0;
//    cnt = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
