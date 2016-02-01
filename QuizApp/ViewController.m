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
}

@end

@implementation ViewController

- (void)setupParts{
    self.question.text =@"question1";
    question.textAlignment = NSTextAlignmentLeft;

    question.backgroundColor = [UIColor clearColor];
    [self.view addSubview:question];

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
    
    incorrect = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:incorrect];
    
    next = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [next addTarget:self action:@selector(nextQuestion:) forControlEvents:UIControlEventTouchUpInside];
    num = 1;
    cnt = 1;
}


- (IBAction)nextQuestion:(id)sender{
    NSLog(@"nextQuestionを実行します");
    //次の問題へ遷移する
    switch (num) {
        case 1:
            self.question.text = @"question2";
            [self.view addSubview:question];
            cnt = 1;
            num = 2;
            //backボタンを表示する
            break;
        case 2:
            self.question.text = @"question3";
            [self.view addSubview:question];
            cnt = 2;
            num = 3;
            //backボタンを表示する
            break;
        case 3:
            self.question.text = @"question4";
            cnt = 3;
            num = 4;
            //backボタンを表示する
            break;
        case 4:
            self.question.text = @"question5";
            cnt = 4;
            //正答率を見るボタンを表示する
            break;
        default:
            
            break;
    }
    
//switch文に入れたら消す
    back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [back addTarget:self action:@selector(backQuestion:) forControlEvents:UIControlEventTouchUpInside];
    cnt = 1;
    [self.view addSubview:back];

}


- (IBAction)backQuestion:(id)sender{
    NSLog(@"backQuestionを実行します");
    switch (cnt) {
        case 1:
            self.question.text = @"問題1";
            num = 1;
            [self.view addSubview:question];
            break;
        case 2:
            self.question.text = @"問題2";
            num = 2;
            [self.view addSubview:question];
            break;
        case 3:
            self.question.text = @"問題3";
            num = 2;
            [self.view addSubview:question];
            break;
        case 4:
            self.question.text = @"問題4";
            [self.view addSubview:question];
            num = 2;
            break;
        default:
            break;
    }
}

- (void)chooseAnswer:(id)sender{
    //回答を選択する

}

- (void)judgeGrade:(id)sender{
    //正答率を元に評価を表示する
}

- (void)calData:(id)sender{
    //正答率を計算する

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupParts];
    num = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
