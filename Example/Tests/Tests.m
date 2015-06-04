//
//  NIXTextEncodingTests.m
//  NIXTextEncodingTests
//
//  Created by Adrian Bigland on 06/04/2015.
//  Copyright 2015 Adrian David Bigland
//
//  Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

// https://github.com/Specta/Specta

#import <NIXTextEncoding/NSData+Base64.h>

NSString *encode(NSString *text) {
    return [[text dataUsingEncoding:NSASCIIStringEncoding] nixEncodeBase64String];
}

NSString *decode(NSString *base64String) {
    NSData *data = [NSData nixDecodeBase64String:base64String];
    return [[NSString alloc] initWithBytes:data.bytes length:data.length encoding:NSASCIIStringEncoding];
}

SpecBegin(InitialSpecs)

describe(@"RFC 4648 Encoding Test Vectors", ^{
   
    it(@"can encode test vector 1", ^{
       
        expect(@"").to.equal(encode(@""));
        
    });
    
    it(@"can encode test vector 2", ^{
        
        expect(@"Zg==").to.equal(encode(@"f"));
        
    });
    
    it(@"can encode test vector 3", ^{
        
        expect(@"Zm8=").to.equal(encode(@"fo"));
        
    });
    
    it(@"can encode test vector 4", ^{
        
        expect(@"Zm9v").to.equal(encode(@"foo"));
        
    });
    
    it(@"can encode test vector 5", ^{
        
        expect(@"Zm9vYg==").to.equal(encode(@"foob"));
        
    });
    
    it(@"can encode test vector 6", ^{
        
        expect(@"Zm9vYmE=").to.equal(encode(@"fooba"));
        
    });
    
    it(@"can encode test vector 7", ^{
        
        expect(@"Zm9vYmFy").to.equal(encode(@"foobar"));
        
    });
    
    it(@"can encode Wikipedia example from http://en.wikipedia.org/wiki/Base64", ^{
        
        expect(@"TWFu").to.equal(encode(@"Man"));
        
    });
    
});

describe(@"RFC 4648 Decoding Test Vectors", ^{
    
    it(@"can decode test vector 1", ^{
        
        expect(@"").to.equal(decode(@""));
        
    });
    
    it(@"can decode test vector 2", ^{
        
        expect(@"f").to.equal(decode(@"Zg=="));
        
    });
    
    it(@"can decode test vector 3", ^{
        
        expect(@"fo").to.equal(decode(@"Zm8="));
        
    });
    
    it(@"can decode test vector 4", ^{
        
        expect(@"foo").to.equal(decode(@"Zm9v"));
        
    });
    
    it(@"can decode test vector 5", ^{
        
        expect(@"foob").to.equal(decode(@"Zm9vYg=="));
        
    });
    
    it(@"can decode test vector 6", ^{
        
        expect(@"fooba").to.equal(decode(@"Zm9vYmE="));
        
    });
    
    it(@"can decode test vector 7", ^{
        
        expect(@"foobar").to.equal(decode(@"Zm9vYmFy"));
        
    });
    
    it(@"can encode Wikipedia example from http://en.wikipedia.org/wiki/Base64", ^{
        
        expect(@"Man").to.equal(decode(@"TWFu"));
        
    });
    
});

SpecEnd

