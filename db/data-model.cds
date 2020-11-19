using { cuid } from '@sap/cds/common';
using {NorthWind as external} from '../srv/external/NorthWind.csn';

namespace Tests;

context Tables{
	entity Students {
	    key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
	entity Students2 {
	    key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
	entity Students3 {
	    key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
		entity Students4 : cuid {
	    // key ID     : UUID;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
	
	@cds.persistence.exists
	entity SAIRPORT {
		key MANDT : String(3);
		key ID : String(3);
		NAME : String(25);
		TIME_ZONE: String(6);
	}
	@cds.persistence.exists
	entity CV_STUDENTS {
		key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
}