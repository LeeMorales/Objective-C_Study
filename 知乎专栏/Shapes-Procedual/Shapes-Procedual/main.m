//
//  main.m
//  Shapes-Procedual
//
//  Created by Lee Morales on 2019/6/21.
//  Copyright © 2019 Lee Morales. All rights reserved.
//

#import <Foundation/Foundation.h>

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

void drawCircle (ShapeRect bounds, ShapeColor fillColor){
    NSLog (@"Drawing a Circle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
}

void drawRectangle (ShapeRect bounds, ShapeColor fillColor){
    NSLog (@"Drawing a Rectangle at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
}

void drawEgg (ShapeRect bounds, ShapeColor fillColor){
    NSLog (@"Drawing a egg at (%d %d %d %d) in %@",
           bounds.x, bounds.y,
           bounds.width, bounds.height,
           colorName(fillColor));
}

@interface Triangle : NSObject{
    ShapeColor fillColor;
    ShapeRect bounds;
}
-(void) setFillColor: (ShapeColor) fillColor;
-(void) setBounds: (ShapeRect) bounds;
-(void) draw;
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
void drawShapes (Shape shapes[], int count) {
    for (int i = 0; i < count; i++) {
        switch (shapes[i].type){
            case kCircle:
                drawCircle (shapes[i].bounds, shapes[i].fillColor);
                break;
                
            case kRectangle:
                drawRectangle (shapes[i].bounds, shapes[i].fillColor);
                break;
                
            case kOblateSpheroid:
                drawEgg (shapes[i].bounds, shapes[i].fillColor);
                break;
        }
    }
}

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
    
    drawShapes(shapes, 3);
    
    return (0);
}
