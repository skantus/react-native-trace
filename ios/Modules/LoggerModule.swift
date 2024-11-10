//
//  LoggerModule.swift
//  ReactNativeTrace
//
//  Created by Alejo Castaño on 10/11/24.
//
import React

@objc(LoggerModule)
class LoggerModule: NSObject {
  
  @objc
  func initialize(_ apiKey: String, enableDebug: Bool) {
    print("Logger Initialized with API Key: \(apiKey)")
    print("enableDebug status: \(enableDebug)")
  }
  
  @objc
  func log(_ level: String, message: String, metadata: [String: Any]) {
    print("[\(level.uppercased())] \(message): \(metadata)")
  }
}
