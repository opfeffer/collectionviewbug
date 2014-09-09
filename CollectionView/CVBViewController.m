//
//  CVBViewController.m
//  CollectionView
//
//  Created by Oliver Pfeffer on 9/8/14.
//  Copyright (c) 2014 Astrio. All rights reserved.
//

#import "CVBViewController.h"

@interface CVBViewController () <UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView2;


@end

@implementation CVBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        [self.collectionView2 registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return collectionView.tag==0 ? 4 : 3;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithRed:(50*indexPath.item)/255.f green:(50*indexPath.item)/255.f blue:1.0f alpha:1];
    
    return cell;
}


@end
