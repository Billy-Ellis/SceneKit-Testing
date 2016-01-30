//
//  ViewController.h
//  tests
//
//  Created by Billy Ellis on 24/12/2015.
//  Copyright © 2015 Billy Ellis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SceneKit/SceneKit.h>

float chamferRadius = 0;

@interface ViewController : UIViewController

{
    
    IBOutlet UISlider *slider;
    IBOutlet SCNView *sceneView;
    IBOutlet UISegmentedControl *segment;
    
    UIColor *colour;
    SCNBox *box;
}


@end

