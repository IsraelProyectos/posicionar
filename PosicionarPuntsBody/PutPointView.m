//
//  PutPointView.m
//  PosicionarPuntsBody
//
//  Created by Israel Puyol on 17/7/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import "PutPointView.h"

@implementation PutPointView

+ (UIImageView*)putPointView:(UIView*)view posX:(NSString*)posX posY:(NSString*)posY andNameImage:(NSInteger)nameImage {

    CGFloat x = view.frame.size.width / 2;
    CGFloat y = view.frame.size.height / 2;
    
    
    
    CGFloat proportionalXOffset = (1 * (x * 2)) / 768;
    CGFloat proportionalYOffset = (1 * (y * 2)) / 1024;
    
    
    
    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"diana01.png"]];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(deleteImageView:)];
    [image addGestureRecognizer:tapGesture];
    [image setUserInteractionEnabled:YES];
   
    
    NSInteger textFieldX = [posX integerValue] + image.frame.size.width /2;
    NSInteger textFieldY = [posY integerValue] + image.frame.size.height/2;
    
    [image setFrame:CGRectMake(x  - (textFieldX * proportionalXOffset), y - (textFieldY * proportionalYOffset), 50, 50)];
    
    return image;
    
}

+ (void)deleteImageView: (UITapGestureRecognizer *)tapGesture{
    
    
    UIImageView *imageView = (UIImageView *)tapGesture.view;
    
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Title"
                                 message:@"Message"
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* yesButton = [UIAlertAction
                                actionWithTitle:@"Esborrar punt"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];
    
    UIAlertAction* noButton = [UIAlertAction
                               actionWithTitle:@"Cancelar"
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction * action) {
                                   //Handle no, thanks button
                               }];
    
    [alert addAction:yesButton];
    [alert addAction:noButton];
    
   
    
    NSLog(@"%@", imageView);
    [imageView removeFromSuperview];
    imageView = nil;
}

@end
