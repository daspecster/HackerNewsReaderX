//
//  Appcelerator Titanium Mobile
//  WARNING: this is a generated file and should not be modified
//

#import <UIKit/UIKit.h>
#define _QUOTEME(x) #x
#define STRING(x) _QUOTEME(x)

NSString * const TI_APPLICATION_DEPLOYTYPE = @"development";
NSString * const TI_APPLICATION_ID = @"com.elevenbasetwo.hnreader";
NSString * const TI_APPLICATION_PUBLISHER = @"Thomas Schultz";
NSString * const TI_APPLICATION_URL = @"http://";
NSString * const TI_APPLICATION_NAME = @"HNReader";
NSString * const TI_APPLICATION_VERSION = @"1.0";
NSString * const TI_APPLICATION_DESCRIPTION = @"This is a reader for Hacker News Articles.";
NSString * const TI_APPLICATION_COPYRIGHT = @"2012 by Thomas Schultz";
NSString * const TI_APPLICATION_GUID = @"3b1a891d-4adf-45d5-8fe1-91bf53c2ca23";
BOOL const TI_APPLICATION_ANALYTICS = true;

#ifdef TARGET_IPHONE_SIMULATOR
NSString * const TI_APPLICATION_RESOURCE_DIR = @"";
#endif

int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

#ifdef __LOG__ID__
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *logPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%s.log",STRING(__LOG__ID__)]];
	freopen([logPath cStringUsingEncoding:NSUTF8StringEncoding],"w+",stderr);
	fprintf(stderr,"[INFO] Application started\n");
#endif

	int retVal = UIApplicationMain(argc, argv, nil, @"TiApp");
    [pool release];
    return retVal;
}
