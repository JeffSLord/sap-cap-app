using { cuid } from '@sap/cds/common';
using {NorthWind as external} from '../srv/external/NorthWind.csn';

namespace Tests;
context Tables{
	entity Students { // basic table
	    key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
	
	entity StudentsView  as SELECT FROM Students; // basic view on top of basic table
	
	entity MyProduct{ // table with association to external. expand not functioning as expected
		key ID : Integer not null;
		NAME: String(100);
		DETAIL: String(100);
		PRODUCT_ID : Integer;
		PRODUCT: Association to NorthWindProduct on PRODUCT.ID = PRODUCT_ID;
		STUDENT: Association to Students on STUDENT.ID = PRODUCT_ID;
	}
	
	// @cds.persistence.view
	entity NorthWindProduct as select from external.Products;
	
	// entity NorthWindProductProjection as projection on NorthWindProduct;

	@cds.persistence.exists
	entity SAIRPORT { // connect to cross container table
		key MANDT : String(3);
		key ID : String(3);
		NAME : String(25);
		TIME_ZONE: String(6);
	}
	@cds.persistence.exists
	entity CV_STUDENTS { // connect to calculation view (via synonym)
		key ID     : Integer not null;
	    NAME   : String(100);
	    SITE   : String(100);
	    GENDER : String(100);
	    AGE    : String(100);
	    SCORE  : Double;
	}
}