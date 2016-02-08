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
    float userpoint;
}

@end

@implementation ViewController

- (void)setupParts{
    self.question.text =@"クイズタイトル";
    question.textAlignment = NSTextAlignmentCenter;
    question.backgroundColor = [UIColor clearColor];

    self.grade.text =@"評価が入ります。";
    grade.textAlignment = NSTextAlignmentLeft;
    grade.backgroundColor = [UIColor clearColor];
   // [self.view addSubview:grade];

    percentage.text =@"正答率が入ります。";
    percentage.textAlignment = NSTextAlignmentLeft;
    percentage.backgroundColor = [UIColor clearColor];
    [self.view addSubview:percentage];

    correct = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:correct];
    
    incorrect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:incorrect];
    
    next = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [next addTarget:self action:@selector(nextQuestion:) forControlEvents:UIControlEventTouchUpInside];

    back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back addTarget:self action:@selector(backQuestion:) forControlEvents:UIControlEventTouchUpInside];

}


- (IBAction)nextQuestion:(id)sender{
    NSLog(@"nextQuestionを実行します");
    //次の問題へ遷移する
    switch (num) {
        case 0:
            [self showQuestion];
            num ++;
            back.hidden;
            break;
        case 1:
            [self showQuestion];
            self.question.text = @"question1";
            num ++;
            break;
        case 2:
            self.question.text = @"question2";
            num ++;
            break;
        case 3:
            self.question.text = @"question3";
            num ++;
            break;
        case 4:
            self.question.text = @"question4";
            num ++;
            break;
        case 5:
            self.question.text = @"question5";
            break;
        default:
            break;
    }
    [self.view addSubview:back];
    [self showQuestion];
}


- (IBAction)backQuestion:(id)sender{
    NSLog(@"backQuestionを実行します");
    switch (num) {
        case 0:
            break;
        case 1:
            self.question.text = @"問題1";
            break;
        case 2:
            self.question.text = @"問題2";
            num --;
            break;
        case 3:
            self.question.text = @"問題3";
            num --;
            break;
        case 4:
            self.question.text = @"問題4";
            num --;
            break;
        case 5:
            self.question.text = @"問題5";
            num --;
            break;
        default:
            break;
    }
    [self showQuestion];
}

- (void)showQuestion{
    switch (num) {
        case 0:
            question.text = @"showquestionクイズタイトル";
            break;
        case 1:
            question.text = @"showquestion問題文1";
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


- (IBAction)chooseCorrect{
    //回答を選択する
    NSLog(@"◯を選びました！");
    judge = true;
    [self judgeGrade];
}

- (IBAction)chooseIncorrect{
    NSLog(@"✖️を選びました！");
    //回答を選択する
    judge = false;
    [self judgeGrade];
}

- (void)judgeGrade{
    //選択肢を元に正解を判断する
    switch (num) {
        case 1:
            if (judge == true) {
                grade.text = @"正解";
                userpoint ++;
            }
            grade.text = @"不正解";
            break;
        case 2:
            if (judge == true) {
                grade.text = @"正解";
                userpoint ++;
            }
            grade.text = @"不正解";
            break;
        case 3:
            if (judge == true) {
                grade.text = @"正解";
                userpoint ++;
            }
            grade.text = @"不正解";
            break;
        case 4:
            if (judge == true) {
                grade.text = @"正解";
                userpoint ++;
            }
            grade.text = @"不正解";
            break;
        case 5:
            if (judge == true) {
                grade.text = @"正解";
                userpoint ++;
            }
            grade.text = @"不正解";
            break;
        default:
            break;
    }
    [self.view addSubview:grade];
}

- (void)calData{
    //正答率を計算する
    float total = 0;
    total = userpoint/num*100;
    grade.text = [[NSString alloc]initWithFormat:@"%.2f",total];
    [self.view addSubview:grade];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    num = 1;
    [self setupParts];
    userpoint = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
