//
//  UpdateViewController.m
//  打印
//
//  Created by kozon on 2017/3/6.
//  Copyright © 2017年 Kozon app. All rights reserved.
//

#import "UpdateViewController.h"
#import "ViewController.h"

@interface UpdateViewController ()

@end

@implementation UpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)addCompany:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.companyStr = self.companyTextField.text;
        [self.vc.companyArray addObject:self.companyTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)addAddress:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.addressStr = self.addressTextField.text;
        
        [self.vc.addressArray addObject:self.addressTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)addPhone:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.phoneStr = self.phoneTextField.text;
        
        [self.vc.phoneArray addObject:self.phoneTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addFax:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.faxStr = self.faxTextField.text;
        
        [self.vc.faxArray addObject:self.faxTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addCustomer:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.customerStr = self.customerTextField.text;
        
        [self.vc.customerArray addObject:self.customerTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addSpongeKind:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.spongeStr = self.spongeTextField.text;
        
        [self.vc.spongeKindArray addObject:self.spongeTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addColor:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.colorStr = self.colorTextField.text;
        
        [self.vc.colorArray addObject:self.colorTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addStandard:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.standardStr = self.standardTextField.text;
        
        [self.vc.standardArray addObject:self.standardTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

    
}
- (IBAction)addPart:(UIButton *)sender {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"添加成功，请返回查看！" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        //    self.vc.partStr = self.partTextField.text;
        
        [self.vc.partArray addObject:self.partTextField.text];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
