//
//  PDFDocumentPageSlider.h
//  PDFReader-GoodReader
//
//  Created by James Kingdom on 2018/02/15.
//  Copyright (c) 2018 James Kingdom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PDFDocumentPageSlider;
@class PDFDocumentPageSliderModel;

@protocol PDFDocumentPageSliderDelegate <NSObject>
@optional
- (void)pageSlider:(PDFDocumentPageSlider *)slider didStartAtIndex:(NSUInteger)index;
- (void)pageSlider:(PDFDocumentPageSlider *)slider didSelectAtIndex:(NSUInteger)index;
- (void)pageSliderBackClicked:(PDFDocumentPageSlider *)slider;
- (void)pageSliderForwardClicked:(PDFDocumentPageSlider *)slider;
@end

@interface PDFDocumentPageSlider : UIView
@property (nonatomic, weak) id<PDFDocumentPageSliderDelegate> delegate;
@property (nonatomic, strong) PDFDocumentPageSliderModel *model;
@end
