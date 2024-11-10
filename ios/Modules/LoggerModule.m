//
//  LoggerModule.m
//  ReactNativeTrace
//
//  Created by Alejo Castaño on 10/11/24.
//
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(LoggerModule, NSObject)

RCT_EXTERN_METHOD(initialize:(NSString *)apiKey enableDebug:(BOOL)enableDebug)
RCT_EXTERN_METHOD(log:(NSString *)level message:(NSString *)message metadata:(NSDictionary *)metadata)

@end
