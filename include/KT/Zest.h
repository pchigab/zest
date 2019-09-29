
#ifndef _ZEST_H_5EE01B24A2CFE0CC964DA85C272C6829_
#define _ZEST_H_5EE01B24A2CFE0CC964DA85C272C6829_

#include "KT.h"

KT_TEAM_BEGIN

class Zest : public Ji
{
public:
	Zest();
	~Zest();
    
public:
    virtual bool        GG() override;
    virtual bool        GLHF() override;
    
    virtual bool        Play() override;
    virtual bool        Tiao() override;
    virtual bool        Win() override;
    virtual bool        Dead() override;
    
    virtual bool        Disdain() override;
    
public:
    void                KingReturn();
};

KT_TEAM_END

#endif // _ZEST_H_5EE01B24A2CFE0CC964DA85C272C6829_
