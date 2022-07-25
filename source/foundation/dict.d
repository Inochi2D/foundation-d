module foundation.dict;
version(D_ObjectiveC) {
    import foundation.string;
    import foundation.object;
    import core.attribute : selector;

    extern (Objective-C):

    extern class NSDictionary : NSObject {
    public:
        @property int count () @selector("count");
    }
}