/*
   Copyright (c) 2013, The Linux Foundation. All rights reserved.
   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.
   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>

#include "vendor_init.h"
#include "property_service.h"
#include "util.h"

#include "init_msm.h"

void init_msm_properties(unsigned long msm_id, unsigned long msm_ver, char *board_type)
{
	char bootloader[PROP_VALUE_MAX];

	UNUSED(msm_id);
	UNUSED(msm_ver);
	UNUSED(board_type);

	property_get("ro.bootloader", bootloader);

	if (strstr(bootloader, "N900A")) {
		/* hlteatt */
		property_set("ro.product.model", "SM-N900A");
		property_set("ro.product.name", "hlteatt");
	} else if (strstr(bootloader, "N900W8")) {
		/* hltecan */
		property_set("ro.product.model", "SM-N900W8");
		property_set("ro.product.name", "hltecan");
	} else if (strstr(bootloader, "N900P")) {
		/* hltespr */
		property_set("ro.product.model", "SM-N900P");
		property_set("ro.product.name", "hltespr");
	} else if (strstr(bootloader, "N900T")) {
		/* hltetmo */
		property_set("ro.product.model", "SM-N900T");
		property_set("ro.product.name", "hltetmo");
	} else if (strstr(bootloader, "N900R4")) {
		/* hlteusc */
		property_set("ro.product.model", "SM-N900R4");
		property_set("ro.product.name", "hlteusc");
	} else if (strstr(bootloader, "N900V")) {
		/* hltevzw */
		property_set("ro.product.model", "SM-N900V");
		property_set("ro.product.name", "hltevzw");
	} else {
		if (strstr(bootloader, "N9005DX")) {
			/* hlte/dx */
			property_set("ro.product.name", "hltedx");
		} else if (strstr(bootloader, "N9005VJ")) {
			/* hlte/vj */
			property_set("ro.product.name", "hltevj");
		} else if (strstr(bootloader, "N9005ZS")) {
			/* hlte/zh */
			property_set("ro.product.name", "hltezh");
		} else {
			/* all other variants become hlte/xx */
			property_set("ro.product.name", "hltexx");
		}
		property_set("ro.product.model", "SM-N9005");
	}
	property_set("ro.product.device", "hlte");
}
