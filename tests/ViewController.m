//
//  ViewController.m
//  tests
//
//  Created by Billy Ellis on 24/12/2015.
//  Copyright © 2015 Billy Ellis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)segmentChanged:(id)sender {
    
    if (segment.selectedSegmentIndex == 0) {
        colour = [UIColor blueColor];
    } else if(segment.selectedSegmentIndex == 1) {
         colour = [UIColor redColor];
    } else if(segment.selectedSegmentIndex == 2) {
         colour = [UIColor greenColor];
    } else if(segment.selectedSegmentIndex == 3) {
        colour = [UIColor yellowColor];
    }
    
    box.firstMaterial.diffuse.contents = colour;

    
}

- (IBAction)sliderMoved:(id)sender {
    
    chamferRadius = slider.value;
    
    box.chamferRadius = chamferRadius;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    colour = [UIColor blueColor];
    
    SCNScene *scene = [SCNScene scene];
    sceneView.scene = scene;
    
    sceneView.allowsCameraControl = YES;
    sceneView.autoenablesDefaultLighting = YES;
    
    //box
    
    box = [SCNBox boxWithWidth:1 height:1 length:1 chamferRadius:chamferRadius];
    box.firstMaterial.diffuse.contents = colour;
    
    SCNNode *boxNode = [SCNNode nodeWithGeometry:box];
    [scene.rootNode addChildNode:boxNode];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
