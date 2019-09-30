
#ifndef _STATS_H_CCD051485B71ACA0E27959967D7B3B1A_
#define _STATS_H_CCD051485B71ACA0E27959967D7B3B1A_

#include "KT.h"

KT_TEAM_BEGIN

class Stats : public zIJi
{
public:
	Stats();
	~Stats();
    
public:
    virtual bool        GG() override;
    virtual bool        GLHF() override;
    
    virtual bool        Play() override;
    virtual bool        Tiao() override;
    virtual bool        Win() override;
    virtual bool        Dead() override;
    
    virtual bool        Disdain() override;
};

KT_TEAM_END

#endif // _STATS_H_CCD051485B71ACA0E27959967D7B3B1A_
