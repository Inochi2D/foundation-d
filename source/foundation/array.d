module foundation.array;
version(D_ObjectiveC) {
    import foundation.object;
    import core.attribute : selector;

    extern (Objective-C):

    extern class NSArray : NSObject {
    public:
        @property int count () @selector("count");
    }
}