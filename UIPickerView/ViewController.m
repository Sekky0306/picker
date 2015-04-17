//
//  ViewController.m
//  UIPickerView
//
//  Created by 関戸優紀 on 2015/03/21.
//  Copyright (c) 2015年 関戸優紀. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    IBOutlet UIPickerView *picker;
    NSArray *ballParkArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // UIPickerのインスタンス化
   
    
    // デリゲートを設定
    picker.delegate = self;
    
    // データソースを設定
    picker.dataSource = self;
    
    // 選択インジケータを表示
    picker.showsSelectionIndicator = YES;
    
    // UIPickerのインスタンスをビューに追加
    ballParkArray = [NSArray arrayWithObjects:@"横浜スタジアム",@"東京ドーム",@"神宮球場",nil];
    
}

 // ピッカーに表示する列数を返
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}


  //ピッカーに表示する行数を返す
 
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return ballParkArray.count;
}


 // 行のサイズを変更
 

  //ピッカーに表示する値を返す
 
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return ballParkArray[row];}


//ピッカーの選択行が決まったとき

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"%@が選択されました",ballParkArray[row]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
