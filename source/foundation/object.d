module foundation.object;

version(D_ObjectiveC) {
    import foundation.string;
    import core.attribute : selector;

    extern(Objective-C):

    extern interface ObjcObject
    {
        bool isEqual (ObjcObject object) @selector("isEqual:");
        @property size_t hash () @selector("hash");
        @property void hash (size_t) @selector("setHash:");
        @property ObjcObject self () @selector("self");
        @property bool isProxy () @selector("isProxy");
        @property ObjcObject retain () @selector("retain");
        void release () @selector("release");
        @property ObjcObject autorelease () @selector("autorelease");
        @property size_t retainCount () @selector("retainCount");
        @property _NSZone* zone () @selector("zone");
        @property NSString description () @selector("description");
        @property void description (NSString) @selector("setDescription:");
        @property NSString debugDescription () @selector("debugDescription");
        @property void debugDescription (NSString) @selector("setDebugDescription:");
    }

    extern struct _NSZone;

    extern class NSObject : ObjcObject
    {
        static void load () @selector("load");
        static void initialize () @selector("initialize");
        @property NSObject init () @selector("init");
        @property static NSObject new_ () @selector("new");
        static NSObject allocWithZone (_NSZone* zone) @selector("allocWithZone:");
        @property static NSObject alloc () @selector("alloc");
        void dealloc () @selector("dealloc");
        void finalize () @selector("finalize");
        @property ObjcObject copy () @selector("copy");
        @property ObjcObject mutableCopy () @selector("mutableCopy");
        static ObjcObject copyWithZone (_NSZone* zone) @selector("copyWithZone:");
        static ObjcObject mutableCopyWithZone (_NSZone* zone) @selector("mutableCopyWithZone:");
        @property bool allowsWeakReference () @selector("allowsWeakReference");
        @property bool retainWeakReference () @selector("retainWeakReference");
        @property static size_t hash () @selector("hash");
        @property static NSString description () @selector("description");
        @property static NSString debugDescription () @selector("debugDescription");

        bool isEqual (ObjcObject object) @selector("isEqual:");
        @property size_t hash () @selector("hash");
        @property void hash (size_t) @selector("setHash:");
        @property ObjcObject self () @selector("self");
        @property bool isProxy () @selector("isProxy");
        @property ObjcObject retain () @selector("retain");
        void release () @selector("release");
        @property ObjcObject autorelease () @selector("autorelease");
        @property size_t retainCount () @selector("retainCount");
        @property _NSZone* zone () @selector("zone");
        @property NSString description () @selector("description");
        @property void description (NSString) @selector("setDescription:");
        @property NSString debugDescription () @selector("debugDescription");
        @property void debugDescription (NSString) @selector("setDebugDescription:");
    }
}