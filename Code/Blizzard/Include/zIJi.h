

#ifndef _ZIJI_H_9F459DC0B4C59C21B085A7DA41B0BAA9_
#define _ZIJI_H_9F459DC0B4C59C21B085A7DA41B0BAA9_

#include "zIBlizzard.h"

class zIJi
{
public:
    zIJi(){}
    ~zIJi(){}
    
public:
    virtual bool        GG() = 0;
    virtual bool        GLHF() = 0;
    
    virtual bool        Play() = 0;
    virtual bool        Tiao() = 0;
    virtual bool        Win() = 0;
    virtual bool        Dead() = 0;

    virtual bool        Disdain() = 0;
};

#endif // _ZIJI_H_9F459DC0B4C59C21B085A7DA41B0BAA9_
