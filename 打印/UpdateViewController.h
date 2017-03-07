//
//  UpdateViewController.h
//  打印
//
//  Created by kozon on 2017/3/6.
//  Copyright © 2017年 Kozon app. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface UpdateViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *companyTextField;
@property (weak, nonatomic) IBOutlet UITextField *addressTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *faxTextField;
@property (weak, nonatomic) IBOutlet UITextField *customerTextField;
@property (weak, nonatomic) IBOutlet UITextField *spongeTextField;
@property (weak, nonatomic) IBOutlet UITextField *colorTextField;
@property (weak, nonatomic) IBOutlet UITextField *standardTextField;
@property (weak, nonatomic) IBOutlet UITextField *partTextField;

// 这个不能自己创建 要从上个界面传递过来
@property (weak, nonatomic) ViewController *vc;

@end
