using Tests.Tables as Tables from '../db/data-model';

service exposed @(requires : 'authenticated-user') {
  entity Students as projection on Tables.Students{*}; // default entity
  entity StudentsView @(requires: ['READ']) as projection on Tables.StudentsView{*}; // entity view
  entity Airport as projection on Tables.SAIRPORT{*}; // Cross Container
  entity CV_Students as projection on Tables.CV_STUDENTS{*}; // Calculation View
  entity NorthWindProduct as projection on Tables.NorthWindProduct{*}; // External odata service
  entity MyProduct as projection on Tables.MyProduct{*, PRODUCT: redirected to NorthWindProduct, STUDENT: redirected to Students}; // association to external odata service
}; 