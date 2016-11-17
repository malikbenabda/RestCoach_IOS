//
//  ProverbeViewController.m
//  RestCoach_0_1_0
//
//  Created by kass on 11/10/15.
//  Copyright (c) 2015 kass. All rights reserved.
//

#import "ProverbeViewController.h"

@interface ProverbeViewController ()

@end

@implementation ProverbeViewController
{
    NSString *labelAfficher ;
    int i;
    int j;
}
/*
-(void)willMoveToParentViewController:(UIViewController *)parent

{
    NSLog(@"SecondViewController moving to or from parent view controller");
    self.view.backgroundColor=[UIColor yellowColor];
    
}

-(void)didMoveToParentViewController:(UIViewController *)parent
{
    NSLog(@"SecondViewController did move to parent view controller");
    self.view.frame = CGRectMake(0,0, 1024,768);
}
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image001 = [UIImage imageNamed:@"001.png"];
    UIImage *image002 = [UIImage imageNamed:@"002.png"];
    UIImage *image003 = [UIImage imageNamed:@"003.png"];
    UIImage *image005 = [UIImage imageNamed:@"005.png"];
    UIImage *image006 = [UIImage imageNamed:@"006.png"];
    UIImage *image007 = [UIImage imageNamed:@"007.png"];
    UIImage *image008 = [UIImage imageNamed:@"008.png"];
    UIImage *image009 = [UIImage imageNamed:@"009.png"];
    UIImage *image010 = [UIImage imageNamed:@"010.png"];
    
    self.imageArray = [[NSMutableArray alloc] initWithObjects:image001 ,image002, image003  , image005 , image006 , image007 , image008 , image009 , image010 , nil];
    
      self.labelArray = [[NSMutableArray alloc] initWithObjects:@"If I had an hour to solve a problem & my life depended on it , I would use the first fifty-five minutes to formulate the right question . Once I've identified the right question I can solve the problem in less than five minutes",@"The person who never made a mistake never made anything.", @"Everyone has their down days. Don't take it out on innocent bystanders.",@"If you get stuck, try doing the opposite of what the solution requires.", @"What could you increase? What could you reduce?",@"Once in a while, eat some sweets you used to enjoy when you were younger." , @"For every complex problem there is an answer that is clear, simple, and wrong.",  nil];
    
    i = 0;
    j = 0;
    
    [_imageView setImage:[self.imageArray objectAtIndex:j]];
    labelAfficher = [self.labelArray objectAtIndex:i];
    _textView.text = labelAfficher;
   
    /*
   NSString *url = @"http://api.adviceslip.com/advice";
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
        [request setHTTPMethod:@"GET"];
        [request setURL:[NSURL URLWithString:url]];
    
        NSError *error = [[NSError alloc] init];
        NSHTTPURLResponse *responseCode = nil;
        
        NSData *oResponseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&responseCode error:&error];
        NSLog(@"String sent from server %@",[[NSString alloc] initWithData:oResponseData encoding:NSUTF8StringEncoding]);
    
        if([responseCode statusCode] != 200){
            NSLog(@"aaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz");
            NSLog(@"Error getting %@, HTTP status code %li", url, (long)[responseCode statusCode]);
        }
    
 
        // NSString *etest = [[NSString alloc] initWithData:oResponseData encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@",request);
    NSLog(@"%@",request);
     */
    
    /*
    // create a new mutable url
    NSMutableURLRequest *request_get2 = [[NSMutableURLRequest alloc] init] ;
    [request_get2 setURL:[NSURL URLWithString:@"http://www.example.com"]];
    [request_get2 setHTTPMethod:@"GET"];
    [request_get2 setValue:@"text/html; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
    [request_get2 setValue:@"http://api.adviceslip.com/advice" forHTTPHeaderField:@"Referer"];
    [request_get2 setHTTPShouldHandleCookies:YES];
    // cookiesString is a string, the format is "cookieName=cookieValue;"
    
    // doGet - response
    NSHTTPURLResponse *response_get2 = nil;
    NSError *error_get2 = nil;
    NSData *responseData_get2 = [NSURLConnection sendSynchronousRequest:request_get2 returningResponse:&response_get2 error:&error_get2];
    NSString *data_get2 = [[NSString alloc]initWithData:responseData_get2 encoding:NSUTF8StringEncoding];
    
    
    NSString *responseURL_get2 = [[response_get2 URL] absoluteString];           // null value
    NSString *responseTextEncodingName_get2 = [response_get2 textEncodingName];  // null value
    NSString *responseMIMEType_get2 = [response_get2 MIMEType];                  // null value
    NSUInteger *responseStatusCode_get2 = [response_get2 statusCode]; //[responseStatusCode intValue]; // the status code is 0
    NSLog(@"%@", response_get2);
    
     */
    // Do any additional setup after loading the view from its nib.
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonImageDroitClicked:(id)sender {
    if(j<8)
    {
        j++;
    }
    [_imageView setImage:[self.imageArray objectAtIndex:j]];
}

- (IBAction)buttonImageGaucheClicked:(id)sender {
    if(j>0)
    {
        j--;
    }
    [_imageView setImage:[self.imageArray objectAtIndex:j]];
}
- (IBAction)buttonLableDroitClicked:(id)sender {
    if(i<5)
    {
        i++;
    }
    labelAfficher = [self.labelArray objectAtIndex:i];
    _textView.text = labelAfficher;
}

- (IBAction)buttonLabelGaucheClicked:(id)sender {
    if(i>0)
    {
        i--;
    }
    labelAfficher = [self.labelArray objectAtIndex:i];
    _textView.text = labelAfficher;
}
@end
