//
//  hypeifyViewController.h
//  hypeify
//
//  Created by Bennett Kolasinski on 11/21/09.
//  Copyright bennettk 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface hypeifyViewController : UIViewController <UIPickerViewDelegate> {
	NSArray *colA;
	NSArray *colB;

	IBOutlet UIPickerView *pickerView;
	IBOutlet UILabel *companyName;
}

@property (nonatomic, retain) IBOutlet UIPickerView *pickerView;
@property (nonatomic, retain) IBOutlet UILabel *companyName;

-(IBAction)gimmeTitle;

@end

