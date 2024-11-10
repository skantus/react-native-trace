Pod::Spec.new do |s|
  s.name         = 'react-native-trace'
  s.version      = '0.1.4'
  s.summary      = 'A React Native module for logging using native Android and iOS code.'
  s.description  = 'A React Native SDK to send logs using native modules for both iOS (Swift) and Android (Kotlin).'
  s.homepage     = 'https://github.com/skantus/react-native-trace'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Your Name' => 'drskantus@hotmail.com' }
  s.source       = { :git => 'https://github.com/skantus/react-native-trace.git', :tag => s.version.to_s }
  s.platform     = :ios, '11.0'
  s.source_files = 'ios/**/*.{swift,m,h}'
  s.swift_version = '5.0'
  # LoggerModule.swift
  s.public_header_files = 'ios/**/*.{h}'
  s.requires_arc = true
end