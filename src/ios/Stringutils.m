
#import <Cordova/CDV.h>
#import IOSStringUtils-Swift.h

@interface Stringutils : CDVPlugin {
  // Member variables go here.
}

- (void) isBlank: (CDVInvokedUrlCommand *) command;
- (void) isEmpty: (CDVInvokedUrlCommand *) command;
@end

@implementation Stringutils

- (void) isBlank: (CDVInvokedUrlCommand *) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* input = [command.arguments objectAtIndex:0];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:[isBlank input]];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) isEmpty: (CDVInvokedUrlCommand *) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* input = [command.arguments objectAtIndex:0];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:[isEmpty input]];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
