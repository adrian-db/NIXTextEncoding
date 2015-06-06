# NIXTextEncoding

[![CI Status](http://img.shields.io/travis/adrian-db/NIXTextEncoding.svg?style=flat)](https://travis-ci.org/Adrian Bigland/NIXTextEncoding)
[![Version](https://img.shields.io/cocoapods/v/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)
[![License](https://img.shields.io/cocoapods/l/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)
[![Platform](https://img.shields.io/cocoapods/p/NIXTextEncoding.svg?style=flat)](http://cocoapods.org/pods/NIXTextEncoding)

## Usage

This provides a category on NSData for encoding and decoding data as base 64 strings.

Import the category:

    #import <NIXTextEncoding/NSData+Base64.h>

Encoding data as a string:

    NSData *myData = [self createDataInYourApp];
    NSString *base64String = [myData nixEncodeBase64String];

Decoding a string back into data:

    NSData *data = [NSData nixDecodeBase64String:base64String];

The tests provide more examples if you need them.

## What is Base 64 encoding?

Base 64 encoding is a technique for expressing binary information (a sequence of bits) such as the coloured dots in a digital image, or the machine code of a computer program using just the letters of the alphabet, and digits 0 to 9 (and '+', '-' and '=' too!).

You would use this technique to pass binary data through a system used mainly for text - like e-mail - to make sure the more exotic patterns of bits in the original binary are not mangled in the process. Sometimes binary data needs printing out, and turning it into text is useful then - printers may not be able to handle non-alphanumeric characters. It also helps to have it in textual form for entry back into a computer later.

The downside is that the textual form has about a third more bytes than the original binary, and some processing is needed, which may have performance repercussions - although it is pretty lightweight.

Refer to the [Wikipedia article](http://en.wikipedia.org/wiki/Base64 "Wikipedia:Base 64 encoding") and the definition in [RFC 4648](http://www.ietf.org/rfc/rfc4648.txt "RFC 4648:Base 64 encoding definition") for greater detail.

## Requirements

iOS 6.0+

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
