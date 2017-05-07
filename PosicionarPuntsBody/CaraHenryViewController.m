//
//  CaraHenryViewController.m
//  PosicionarPuntsBody
//
//  Created by isra on 15/7/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "CaraHenryViewController.h"
#import "PutPointView.h"

@interface CaraHenryViewController ()

@property (strong, nonatomic) IBOutlet UIImageView *imageHenryFace;
@property (strong, nonatomic) IBOutlet UILabel *lblPosX;
@property (strong, nonatomic) IBOutlet UILabel *lblPosY;
@property (strong, nonatomic) IBOutlet UITextField *txfPosX;
@property (strong, nonatomic) IBOutlet UITextField *txfPosY;

@end

NSInteger nameImage;

@implementation CaraHenryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPositionPoint:(id)sender {
    [self putPointsToHenry];
}

#pragma send arguments to PutPointView

- (void)putPointsToHenry {
    nameImage++;
    UIImageView *myImage = [[UIImageView alloc]init];
    myImage =[PutPointView putPointView:self.view posX:self.txfPosX.text posY:self.txfPosY.text andNameImage:nameImage];
    myImage.tag = nameImage;
    [self.view addSubview:myImage];
    
}

- (void)deleteImageView: (UITapGestureRecognizer *)tapGesture{
    UIImageView *imageView = (UIImageView *)tapGesture.view;
    NSLog(@"%@", imageView);
    imageView = nil;
    //[PutPointView deleteImageView:imageView];
}

@end
