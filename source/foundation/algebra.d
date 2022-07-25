module foundation.algebra;
version(D_ObjectiveC) {
    extern (Objective-C):

    /**
    ** NSSize structure.
    */
    struct NSSize
    {
        double width;
        double height;
    }

    /**
    ** NSPoint structure.
    */
    struct NSPoint
    {
        double x;
        double y;
    }


    /**
    ** NSRect structure.
    */
    struct NSRect
    {
        NSPoint origin;
        NSSize size;
    }
}