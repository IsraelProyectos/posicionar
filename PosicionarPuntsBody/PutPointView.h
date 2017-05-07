//
//  PutPointView.h
//  PosicionarPuntsBody
//
//  Created by Israel Puyol on 17/7/16.
//  Copyright © 2016 Israel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PutPointView : NSObject
+ (UIImageView*)putPointView:(UIView*)view posX:(NSString*)posX posY:(NSString*)posY andNameImage:(NSInteger)nameImage;
+(void)deleteImageView: (UIImageView*)imageView;
@end
