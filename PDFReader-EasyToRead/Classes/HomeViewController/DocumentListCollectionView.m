//
//  DocumentListCollectionView.m
//  PDFReader-GoodReader
//
//  Created by James Kingdom on 9/6/14.
//  Copyright (c) 2018 James Kingdom. All rights reserved.
//

#import "DocumentListCollectionView.h"

@interface DocumentListCollectionView ()
@property (nonatomic, strong) IBOutlet UIView *emptyView;
@property (nonatomic, strong) IBOutlet UILabel *emptyTitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *emptyDescriptionLabel;
@end

@implementation DocumentListCollectionView

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.emptyTitleLabel.text = LocalizedString(@"home.no-books");
    self.emptyDescriptionLabel.text = LocalizedString(@"home.no-books-description");
}
//- (void)awakeFromNib
//{
//    [super awakeFromNib];
//    self.emptyTitleLabel.text = LocalizedString(@"home.no-books");
//    self.emptyDescriptionLabel.text = LocalizedString(@"home.no-books-description");
//}

- (void)layoutSubviews
{
    [super layoutSubviews];

    BOOL hidden = [self numberOfSections] > 0 && [self numberOfItemsInSection:0] > 0;
    self.emptyView.hidden = hidden;
}

@end
