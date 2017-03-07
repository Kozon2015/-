//
//  ViewController.m
//  打印
//
//  Created by kozon on 2017/3/3.
//  Copyright © 2017年 Kozon app. All rights reserved.
//

#import "ViewController.h"
#import "ActionSheetPicker.h"
#import "NSUserDefaults+BRUserDefaults.h"
#import "UpdateViewController.h"

@interface ViewController ()<UIPrintInteractionControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *companyButton;
@property (weak, nonatomic) IBOutlet UIButton *addressButton;
@property (weak, nonatomic) IBOutlet UIButton *phoneButton;
@property (weak, nonatomic) IBOutlet UIButton *faxButton;
@property (weak, nonatomic) IBOutlet UIButton *customerButton;
@property (weak, nonatomic) IBOutlet UIButton *spongeKindButton;
@property (weak, nonatomic) IBOutlet UIButton *colorButton;
@property (weak, nonatomic) IBOutlet UIButton *standardButton;
@property (weak, nonatomic) IBOutlet UIButton *partButton;
@property (weak, nonatomic) IBOutlet UIButton *dateButton;
@property (weak, nonatomic) IBOutlet UIView *myView;

@property (nonatomic, strong) UIPickerView *companyPickerView;
@property (nonatomic, strong) UIPickerView *addressPickerView;
@property (nonatomic, strong) UIPickerView *phonePickerView;
@property (nonatomic, strong) UIPickerView *faxPickerView;
@property (nonatomic, strong) UIPickerView *customerPickerView;
@property (nonatomic, strong) UIPickerView *spongeKindPickerView;
@property (nonatomic, strong) UIPickerView *colorPickerView;
@property (nonatomic, strong) UIPickerView *standardPickerView;
@property (nonatomic, strong) UIPickerView *partPickerView;


@property NSUserDefaults *userDefaults;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    if ([NSUserDefaults userCompany] != nil) {
        self.companyButton.titleLabel.text = [NSUserDefaults userCompany];
    } else {
        [self.companyButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userAddress] != nil) {
        self.addressButton.titleLabel.text = [NSUserDefaults userAddress];
    } else {
        [self.addressButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userPhone] != nil) {
        self.phoneButton.titleLabel.text = [NSUserDefaults userPhone];
    } else {
        [self.phoneButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userFax] != nil) {
        self.faxButton.titleLabel.text = [NSUserDefaults userFax];
    } else {
        [self.faxButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userCustomer] != nil) {
        self.customerButton.titleLabel.text = [NSUserDefaults userCustomer];
    } else {
        [self.customerButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userSpongeKind] != nil) {
        self.spongeKindButton.titleLabel.text = [NSUserDefaults userSpongeKind];
    } else {
        [self.spongeKindButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userColor] != nil) {
        self.colorButton.titleLabel.text = [NSUserDefaults userColor];
    } else {
        [self.colorButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userStandard] != nil) {
        self.standardButton.titleLabel.text = [NSUserDefaults userStandard];
    } else {
        [self.standardButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userPart] != nil) {
        self.partButton.titleLabel.text = [NSUserDefaults userPart];
    } else {
        [self.partButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    if ([NSUserDefaults userDate] != nil) {
        self.dateButton.titleLabel.text = [NSUserDefaults userDate];
    } else {
        [self.dateButton setTitle:@"点击下拉选择" forState:UIControlStateNormal];
    }
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self setUpData];
}

// 数据只要初始化一次即可 写在action里面 每次触发都会重新初始化
- (void)setUpData{
    self.companyArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.addressArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.phoneArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.faxArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.customerArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.spongeKindArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.colorArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.standardArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
    self.partArray = [[NSMutableArray alloc]initWithObjects:@" ", nil];
}

-(void)viewWillDisappear:(BOOL)animated{
    [NSUserDefaults setUserCompany:self.companyButton.titleLabel.text];
    [NSUserDefaults setUserAddress:self.addressButton.titleLabel.text];
    [NSUserDefaults setUserPhone:self.phoneButton.titleLabel.text];
    [NSUserDefaults setUserFax:self.faxButton.titleLabel.text];
    [NSUserDefaults setUserCustomer:self.customerButton.titleLabel.text];
    [NSUserDefaults setUserSpongeKind:self.spongeKindButton.titleLabel.text];
    [NSUserDefaults setUserColor:self.colorButton.titleLabel.text];
    [NSUserDefaults setUserStandard:self.standardButton.titleLabel.text];
    [NSUserDefaults setUserPart:self.partButton.titleLabel.text];
    [NSUserDefaults setUserDate:self.dateButton.titleLabel.text];
}

- (IBAction)company:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.companyArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.companyButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.companyButton.titleLabel];
    
}

- (IBAction)address:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.addressArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.addressButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.addressButton.titleLabel];
}

- (IBAction)phone:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.phoneArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.phoneButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.phoneButton.titleLabel];
}

- (IBAction)fax:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.faxArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.faxButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.faxButton.titleLabel];
}

- (IBAction)customer:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.customerArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.customerButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.customerButton.titleLabel];
}

- (IBAction)spongeKind:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.spongeKindArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.spongeKindButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.spongeKindButton.titleLabel];
}

- (IBAction)color:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.colorArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.colorButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.colorButton.titleLabel];
}

- (IBAction)standard:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.standardArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.standardButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.standardButton.titleLabel];
}

- (IBAction)part:(UIButton *)sender {
    [ActionSheetStringPicker showPickerWithTitle:nil rows:self.partArray initialSelection:0 doneBlock:^(ActionSheetStringPicker *picker, NSInteger selectedIndex, id selectedValue) {
        [self.partButton setTitle:selectedValue forState:UIControlStateNormal];
    } cancelBlock:^(ActionSheetStringPicker *picker) {
        NSLog(@"Block Picker Canceled");
    } origin:self.partButton.titleLabel];
}

- (IBAction)date:(UIButton *)sender {
    UIDatePicker *datePicker = [[UIDatePicker alloc] init]; datePicker.datePickerMode = UIDatePickerModeDate;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"\n\n\n\n\n\n\n\n\n\n\n" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    [alert.view addSubview:datePicker];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
        //实例化一个NSDateFormatter对象
        [dateFormat setDateFormat:@"yyyy-MM-dd"];//设定时间格式
        NSString *dateString = [dateFormat stringFromDate:datePicker.date];
        [self.dateButton setTitle:dateString forState:UIControlStateNormal];
    }];
    [alert addAction:ok];
    //不加这个在iPad运行会崩溃
    if([[[UIDevice currentDevice] systemVersion] floatValue]>=8.0) {
        alert.popoverPresentationController.sourceView = sender;
        alert.popoverPresentationController.sourceRect = sender.bounds;
    }
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)print:(UIBarButtonItem *)sender {
    UIPrintInteractionController *controller = [UIPrintInteractionController sharedPrintController];
    controller.delegate = self;
    UIPrintInfo *printInfo = [UIPrintInfo printInfo];
    printInfo.outputType = UIPrintInfoOutputGeneral;
    printInfo.duplex = UIPrintInfoDuplexLongEdge;
    controller.printInfo = printInfo;
    NSMutableData *data = [NSMutableData new];
    UIGraphicsBeginPDFContextToData(data,self.myView.bounds,nil);
    UIGraphicsBeginPDFPage();
    CGContextRef pdfcontext = UIGraphicsGetCurrentContext();
    [self.myView.layer renderInContext:pdfcontext];
    UIGraphicsEndPDFContext();
    controller.printingItem = data;
    void (^completionHandler)(UIPrintInteractionController *, BOOL, NSError *) =
    ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
        if (!completed && error) {
            NSLog(@"可能无法完成，因为印刷错误: %@", error);
        }
    };
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        UIBarButtonItem *item = [[UIBarButtonItem alloc] init];
        [controller presentFromBarButtonItem:item animated:YES completionHandler:completionHandler];//在ipad上弹出打印那个页面
    } else {
        [controller presentAnimated:YES completionHandler:completionHandler];//在iPhone上弹出打印那个页面
    }
}

// important here
// 使用segue调整 传参自己百度看一下要怎么处理  这里有好几种方式
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        UIBarButtonItem *left = (UIBarButtonItem *)sender;
        if ([left.title isEqualToString:@"添加更新"]) {
            UpdateViewController *toVC = segue.destinationViewController;
            toVC.vc = self;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
