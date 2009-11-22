//
//  hypeifyViewController.m
//  hypeify
//
//  Created by Bennett Kolasinski on 11/21/09.
//  Copyright bennettk 2009. All rights reserved.
//

#import "hypeifyViewController.h"
#include <stdlib.h>

@implementation hypeifyViewController

@synthesize pickerView, companyName;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	colA = [[NSArray alloc] initWithObjects:@"hype", @"spot", @"music", @"mix", @"audio", @"sound", @"song", @"band", @"cloud", @"tune", nil];
	colB = [[NSArray alloc] initWithObjects:@"ify", @"ly", @"brains", @"cloud", @"kick", @"nest", @"ulous", @"core", @"jam", @"base", nil];
    [super viewDidLoad];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
	if (component == 0) {
		return [colA objectAtIndex:row];
	} else {
		return [colB objectAtIndex:row];
	}
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
	return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
	if (component == 0) {
		return [colA count];
	} else {
		return [colB count];
	}
}

-(IBAction)gimmeTitle {
	int indexA = rand() % [colA count]; 
	int indexB = rand() % [colB count];
	
	[pickerView selectRow:indexA inComponent:0 animated:YES];
	[pickerView selectRow:indexB inComponent:1 animated:YES];
	
	[companyName setText:[NSString stringWithFormat:@"%@%@®", 
						  [colA objectAtIndex:indexA], 
						  [colB objectAtIndex:indexB]]];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
