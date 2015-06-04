# NIXTextEncoding

[![CI Status](http://img.shields.io/travis/Adrian Bigland/NIXTextEncoding.svg?style=flat)](https://travis-ci.org/Adrian Bigland/NIXTextEncoding)
[![Version](https://img.shields.io/cocoapods/v/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)
[![License](https://img.shields.io/cocoapods/l/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)
[![Platform](https://img.shields.io/cocoapods/p/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)

## Usage

This provides a category on NSData for encoding and decoding data as base 64 strings.

Encoding data as a string:

NSString *base64String = [myData nixEncodeBase64String];

Decoding a string back into data:

NSData *data = [NSData nixDecodeBase64String:base64String];

The tests provide more examples if you need them.

## Requirements

## Installation

NIXTextEncoding is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NIXTextEncoding"
```

## Author

Adrian Bigland, a.d.bigland@gmail.com

## License

NIXTextEncoding is available under the Version 2.0 Apache License. See the LICENSE file for more info.
