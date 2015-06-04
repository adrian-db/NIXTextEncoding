//
//  NSData+Base64.h
//  NIXTextEncoding
//
//  Created by Adrian David Bigland on 04/06/2015.
//  Copyright 2015 Adrian David Bigland
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

#import <Foundation/Foundation.h>

/**
 *  Implements the Base64 encoding and decoding described in RFC 4748.
 *  See http://www.ietf.org/rfc/rfc4648.txt
 */
@interface NSData (Base64)

/**
 *  Creates a unique string of alphanumeric characters representing the data in base 64
 *  encoding.
 *
 *  @return the string of aplhanumeric characters representing the data in base 64 encoding.
 */
- (NSString *)nixEncodeBase64String;

/**
 *  Re-creates the data originally encoded as a base 64 string.
 *
 *  @param base64String a string of alphanumeric characters.
 *
 *  @return the data that the base 64 character string represents.
 */
+ (NSData *)nixDecodeBase64String:(NSString *)base64String;

@end
