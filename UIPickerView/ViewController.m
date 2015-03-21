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
    UIPickerView *picker;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // UIPickerのインスタンス化
    picker = [[UIPickerView alloc]init];
    
    // デリゲートを設定
    picker.delegate = self;
    
    // データソースを設定
    picker.dataSource = self;
    
    // 選択インジケータを表示
    picker.showsSelectionIndicator = YES;
    
    // UIPickerのインスタンスをビューに追加
    [self.view addSubview:picker];
}

 // ピッカーに表示する列数を返
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}


  //ピッカーに表示する行数を返す
 
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return 5;
}


 // 行のサイズを変更
 
- (CGFloat)pickerView:(UIPickerView *)pickerView
    widthForComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            return 50.0;
            break;
            
        case 1: // 2列目
            return 100.0;
            break;
           
        case 2: //3列目
            return 150.0;
            break;
            
        default:
            return 0;
            break;
    }
}


  //ピッカーに表示する値を返す
 
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0: // 1列目
            
            return [NSString stringWithFormat:@"横浜スタジアム", (long)row];
            break;
            
        case 1: // 2列目
            return [NSString stringWithFormat:@"東京ドーム", (long)row];
            break;
            
        case 2: // 3列目
            return [NSString stringWithFormat:@"神宮球場", (long)component, (long)row];
            break;
            
        default:
            return 0;
            break;
    }
}


//ピッカーの選択行が決まったとき

- (void)pickerView:(UIPickerView *)pickerView
      didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    // 1列目の選択された行数を取得
    NSInteger val0 = [pickerView selectedRowInComponent:0];
    
    // 2列目の選択された行数を取得
    NSInteger val1 = [pickerView selectedRowInComponent:1];
    
    // 3列目の選択された行数を取得
    NSInteger val2 = [pickerView selectedRowInComponent:2];
    
    NSLog(@"1列目:%ld行目が選択", (long)val0);
    NSLog(@"2列目:%ld行目が選択", (long)val1);
    NSLog(@"3列目:%ld行目が選択", (long)val2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
