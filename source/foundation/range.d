module foundation.range;
version(D_ObjectiveC) {
    import foundation.string;

    extern (Objective-C):

    extern struct _NSRange {
        size_t location;
        size_t length;
    }

    alias NSRange = _NSRange;

    alias NSRangePointer = _NSRange*;

    extern NSRange NSMakeRange (size_t loc, size_t len);

    extern size_t NSMaxRange (NSRange range);

    extern bool NSLocationInRange (size_t loc, NSRange range);

    extern bool NSEqualRanges (NSRange range1, NSRange range2);

    extern NSRange NSUnionRange (NSRange range1, NSRange range2);
    extern NSRange NSIntersectionRange (NSRange range1, NSRange range2);
    extern NSString NSStringFromRange (NSRange range);
    extern NSRange NSRangeFromString (NSString aString);
}