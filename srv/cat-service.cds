using Tests.Tables as Tables from '../db/data-model';

// @requires : 'authenticated-user'
service exposed {
  entity Students as projection on Tables.Students{*}; // default entity
  entity StudentsView as projection on Tables.StudentsView{*}; // entity view
  entity Airport as projection on Tables.SAIRPORT{*}; // Cross Container
  entity CV_Students as projection on Tables.CV_STUDENTS{*}; // Calculation View
  entity NorthWindProduct as projection on Tables.NorthWindProduct{*}; // External odata service
  entity MyProduct as projection on Tables.MyProduct{*,
  	PRODUCT: redirected to NorthWindProduct
  }; // association to external odata service
}; 