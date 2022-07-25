module foundation.string;

version(D_ObjectiveC) {
    import foundation.object;
    import core.attribute : selector;


    extern(Objective-C):
    extern class NSString : NSObject {

        /**
            Creates a new NSString from a DLang UTF-8 string
        */
        extern(D) static NSString newFromString(string data) {
            import std.string : toStringz;
            NSString newStr = NSString.alloc();
            newStr.initWith(newStr.toStringz);
            return newStr;
        }

        NSString initWith(in char*) @selector("initWithUTF8String:");

        /// 
        const(char)* toUTF8String() @selector("UTF8String");
    }
}