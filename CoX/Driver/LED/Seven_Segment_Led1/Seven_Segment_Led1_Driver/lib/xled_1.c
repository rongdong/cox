//*****************************************************************************
//
//! \file xled_1.c
//! \brief seven segment digital tubes Driver.
//! \version V2.1.1.0
//! \date 1/6/2013
//! \author CooCox
//! \copy
//!
//! Copyright (c)  2011, CooCox
//! All rights reserved.
//!
//! Redistribution and use in source and binary forms, with or without
//! modification, are permitted provided that the following conditions
//! are met:
//!
//!     * Redistributions of source code must retain the above copyright
//! notice, this list of conditions and the following disclaimer.
//!     * Redistributions in binary form must reproduce the above copyright
//! notice, this list of conditions and the following disclaimer in the
//! documentation and/or other materials provided with the distribution.
//!     * Neither the name of the <ORGANIZATION> nor the names of its
//! contributors may be used to endorse or promote products derived
//! from this software without specific prior written permission.
//!
//! THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//! AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//! IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
//! ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
//! LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//! CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//! SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//! INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//! CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//! ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
//! THE POSSIBILITY OF SUCH DAMAGE.
//*****************************************************************************
#include "xhw_types.h"
#include "xsysctl.h"
#include "xdebug.h"
#include "xhw_memmap.h"
#include "xhw_ints.h"
#include "xcore.h"
#include "xgpio.h"
#include "xled_1.h"

//8 bit:  H,G,F,E,D,C,B,A
//0:ABCDEF; 1:BC; 2:ABDE; 3:ABCDG; 4:FBC
//5:ACDFG; 6:ACDGEF; 7:ABC; 8:ABCDEFG; 9:ABCDFG
const unsigned short xLED_NUM[xLED_NUMBER_COUNT] =
			{0x3f, 0x06, 0x5b, 0x4f, 0x26,
			0x6d, 0x7d, 0x07, 0x7f, 0x6f};

const unsigned long xLED_PIN[LEDn] =
			{LED_DP_PIN, LED_G_PIN, LED_F_PIN, LED_E_PIN,
				 LED_D_PIN, LED_C_PIN, LED_B_PIN, LED_A_PIN};

const unsigned long xLED_PORT[LEDn] =
        {LED_DP_PORT, LED_G_PORT,  LED_F_PORT, LED_E_PORT,
			 LED_D_PORT, LED_C_PORT, LED_B_PORT, LED_A_PORT};

const unsigned long xSEL_PIN[CHIP_SEL_NUM]={CHIP_SEL_1_PIN};
const unsigned long xSEL_PORT[CHIP_SEL_NUM] = {CHIP_SEL_1_PORT};

//*****************************************************************************
//
//! \brief Initialize seven segment digital tubes.
//!
//! \param None
//!
//! This function initialize the seven segment digital tubes.
//!
//! \return None.
//
//*****************************************************************************
void xled1_Init (void)
{
    unsigned long ulI;
    for(ulI = 0; ulI < LEDn; ulI++)
    {
       xSysCtlPeripheralEnable2(xLED_PORT[ulI]);
       xGPIODirModeSet(xLED_PORT[ulI], xLED_PIN[ulI],
                       GPIO_DIR_MODE_OUT);
    }

    for(ulI = 0; ulI < CHIP_SEL_NUM; ulI++)
    {
       xSysCtlPeripheralEnable2(xSEL_PORT[ulI]);
       xGPIODirModeSet(xSEL_PORT[ulI],  xSEL_PIN[ulI],
                       GPIO_DIR_MODE_OUT);
    }
    xled1_Off();
}

//*****************************************************************************
//
//! \brief Close the seven segment digital tubes.
//!
//! \param None
//!
//! This function is to close seven segment digital tubes.
//!
//! \return None.
//
//*****************************************************************************
void xled1_Clear ()
{
	int i;
    for(i= 0; i < CHIP_SEL_NUM; i++)
    {
       xGPIOPinWrite(xSEL_PORT[i],  xSEL_PIN[i],
    		   LED_COMMON_POLAR?0:1);
    }
}

//*****************************************************************************
//
//! \brief Turn the selected LED off.
//!
//! \param None
//!
//! This function is to Turn the slected LED off.
//!
//! \return None.
//
//*****************************************************************************
void xled1_Off(void)
{
	int i;
	for(i=0; i<LEDn; i++)
	{
		xGPIOPinWrite(xLED_PORT[i], xLED_PIN[i], LED_COMMON_POLAR);
	}
}

//*****************************************************************************
//
//! \brief Show the number on the Seven_Segment.
//!
//! \param ucData the number to be showed.
//!
//! This function is to show a number.
//!
//! \return the result.
//
//*****************************************************************************
xtBoolean xled1_Show (unsigned char ucData)
{
    if(ucData>=10 && ucData!=xLED_DOT)
    	return xfalse;

    unsigned char data;

	xGPIOPinWrite(xSEL_PORT[0],  xSEL_PIN[0],
	    		   LED_COMMON_POLAR);

    if(ucData<10)
    	data = xLED_NUM[ucData];
    else
    	data = xLED_DOT;

    int i;
    for(i=0; i<LEDn; i++)
    {
    	xGPIOPinWrite(xLED_PORT[i], xLED_PIN[i],
    			((data>>i)&0x01)^LED_COMMON_POLAR);
    }
    return xtrue;
}
