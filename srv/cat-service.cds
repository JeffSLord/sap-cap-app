using Tests.Tables as Tables from '../db/data-model';

service exposed {
  entity Students as projection on Tables.Students;
  entity Students2 @readonly as projection on Tables.Students2;
  entity Students4 as projection on Tables.Students4;
  entity Airport as projection on Tables.SAIRPORT;
  entity CV_Students as projection on Tables.CV_STUDENTS;
}; 