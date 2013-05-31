//
//  EditBenefitViewController.m
//  MangoPicker
//
//  Created by 김 병찬  on 13. 5. 30..
//  Copyright (c) 2013년 KIM BYEONGCHAN. All rights reserved.
//

#import "EditBenefitViewController.h"
#import "EditBenefitDelegate.h"

@interface EditBenefitViewController (Private)

-(BOOL)validate;

@end


@implementation EditBenefitViewController

@synthesize titleEdit = _titleEdit;
@synthesize cardEdit = _cardEdit;
@synthesize conditionEdit = _conditionEdit;
@synthesize detailEdit = _detailEdit;
@synthesize countEdit = _countEdit;
@synthesize countStepper = _countStepper;
@synthesize managedObjectContext = _managedObjectContext;
@synthesize benefit = _benefit;



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        _isAddMode = false;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}
*/
/*
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}
*/
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark - public method
- (void) setAddMode:(BOOL)mode
{
    _isAddMode = mode;
}

#pragma mark - private method
-(BOOL)validate
{
    if ([self.titleEdit.text length] < 1) {
        return NO;
    }
    
    
    
    return YES;
}

#pragma mark - IBAction implements
- (IBAction)onChangeValueStepper:(id)sender {
    int value = _countStepper.value;
    NSLog(@"onChangeValueStepper %d", value);
    _countEdit.text = [NSString stringWithFormat:@"%d", value];
}

- (IBAction)onSave:(id)sender
{
    // input data validation
    if (![self validate])
    {
        // message
        
        return;
    }
    
    if (_isAddMode)
    {
        // Create and Add Benefit
    }
    else
    {
        // modify Benefit
    }
    
    // back to pre View Controller
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)onCancel:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
