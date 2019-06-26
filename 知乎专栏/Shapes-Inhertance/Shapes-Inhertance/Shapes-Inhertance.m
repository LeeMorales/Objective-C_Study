//
//  main.m
//  Shapes-Inhertance
//
//  Created by Lee Morales on 2019/6/26.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>
//---------------------------------------------------
//定义类型
typedef enum{
    kCircle,
    kRectangle,
    kOblateSpheroid
} ShapeType;

typedef enum {
    kRedColor,
    kBlueColor,
    kGreenColor
} ShapeColor;

typedef struct {
    int x, y, width, height;
} ShapeRect;

typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
} Shape;
//------------------------------------------------------
//定义颜色
NSString *colorName (ShapeColor colorName){
    switch (colorName){
        case kRedColor:
            return @"Red";
            break;
        case kGreenColor:
            return @"Green";
            break;
        case kBlueColor:
            return @"Blue";
            break;
    }
    return @"No clue";
}
//------------------------------------------------------
//画图
@interface Circle : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@interface Rectangle : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@interface Egg : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@interface Triangle : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
@end

@implementation Circle

-(void) setFillColor:(ShapeColor) c{
    fillColor = c;
}

-(void) setBounds:(ShapeRect) b{
    bounds = b;
}

-(void) draw{
    NSLog(@"drawing a Circle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
}
@end

@implementation Rectangle

-(void) setFillColor:(ShapeColor) c{
    fillColor = c;
}

-(void) setBounds:(ShapeRect) b{
    bounds = b;
}

-(void) draw{
    NSLog(@"drawing a Rectangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
}
@end

@implementation Egg

-(void) setFillColor:(ShapeColor) c{
    fillColor = c;
}

-(void) setBounds:(ShapeRect) b{
    bounds = b;
}

-(void) draw{
    NSLog(@"drawing a Egg at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
}
@end

@implementation Triangle

-(void) setFillColor:(ShapeColor) c{
    fillColor = c;
}

-(void) setBounds:(ShapeRect) b{
    bounds = b;
}

-(void) draw{
    NSLog(@"drawing a triangle at (%d %d %d %d) in %@",
          bounds.x, bounds.y,
          bounds.width, bounds.height,
          colorName(fillColor));
}
@end

int main (int argc, const char *argv[]){
    Shape shapes[3];
    
    ShapeRect rect0 = {0, 0, 10, 30};
    shapes[0].type = kCircle;
    shapes[0].fillColor = kRedColor;
    shapes[0].bounds = rect0;
    
    ShapeRect rect1 = {30, 40, 50, 60};
    shapes[1].type = kCircle;
    shapes[1].fillColor = kRedColor;
    shapes[1].bounds = rect1;
    
    ShapeRect rect2 = {15, 18, 37, 29};
    shapes[2].type = kCircle;
    shapes[2].fillColor = kRedColor;
    shapes[2].bounds = rect2;
    
    return (0);
}

