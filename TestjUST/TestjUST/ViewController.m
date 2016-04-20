//
//  ViewController.m
//  TestjUST
//
//  Created by d2space on 15/11/5.
//  Copyright © 2015年 Lianbi.com.cn. All rights reserved.
//

#import "ViewController.h"
#import <JavaScriptCore/JavaScriptCore.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ;
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"]];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];

}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    JSContext *context=[webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    context[@"onShare"] =
    ^(NSString *title ,NSString *content ,NSString *url,NSString *image)
    {
         NSLog(@"title==%@content==%@url==%@image= %@", title,content,url,image);
    };

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
