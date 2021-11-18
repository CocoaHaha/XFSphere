//
//  XFPoint.h
//  XFSphereView
//
//  Created by HN-40 on 2021/11/18.
//

#ifndef XFPoint_h
#define XFPoint_h

struct XFPoint {
    CGFloat x;
    CGFloat y;
    CGFloat z;
};

typedef struct XFPoint XFPoint;


XFPoint XFPointMake(CGFloat x, CGFloat y, CGFloat z) {
    XFPoint point;
    point.x = x;
    point.y = y;
    point.z = z;
    return point;
}


#endif /* XFPoint_h */
