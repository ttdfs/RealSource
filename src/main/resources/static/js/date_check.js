
<!-- 
function check_date(field){
var checkstr = "0123456789";
var DateField = field;
var Datevalue = "";
var DateTemp = "";
var seperator = "-";
var day;
var month;
var year;
var leap = 0;
var err = 0;
var i;
   err = 0;
   DateValue = DateField.value;
   /* ���ڰ� �ƴ� ���� ���� */
   for (i = 0; i < DateValue.length; i++) {
          if (checkstr.indexOf(DateValue.substr(i,1)) >= 0) {
             DateTemp = DateTemp + DateValue.substr(i,1);
          }
   }
   DateValue = DateTemp;

   /* ��¥�� �����ڸ��� ��ȯ*/
   /* ������ 2�ڸ��� �Է� �ȴٸ� 20 �� �߰� */

   if (DateValue.length == 6) {
      DateValue = '20' + DateValue.substr(0,6); }
   if (DateValue.length != 8) {
      err = 19;}

   /* �⵵�� 0000 ���� �ԷµǴ��� üũ */
   year = DateValue.substr(0,4);
   if (year == 0) {
      err = 20;
   }
   /* ���� ��ȿ�� üũ */
   month = DateValue.substr(4,2);
   if ((month < 1) || (month > 12)) {
      err = 21;
   }
   /* ��¥�� ��ȿ�� üũ */
   day = DateValue.substr(6,2);
   if (day < 1) {
     err = 22;
   }
   /* ����/2�� üũ */
   if ((year % 4 == 0) || (year % 100 == 0) || (year % 400 == 0)) {
      leap = 1;
   }
   if ((month == 2) && (leap == 1) && (day > 29)) {
      err = 23;
   }
   if ((month == 2) && (leap != 1) && (day > 28)) {
      err = 24;
   }
   /* ��Ÿ ���� ��ȿ�� üũ  */
   if ((day > 31) && ((month == "01") || (month == "03") || (month == "05") || (month == "07") || (month == "08") || (month == "10") || (month == "12"))) {
      err = 25;
   }
   if ((day > 30) && ((month == "04") || (month == "06") || (month == "09") || (month == "11"))) {
      err = 26;
   }
   /* 00 �Է½� �Է³��� ���� */
   if ((day == 0) && (month == 0) && (year == 00)) {
      err = 0; day = ""; month = ""; year = ""; seperator = "";
   }
   /* ������ ���ٸ� ��¥ ��� */
   if (err == 0) {
      DateField.value = year + seperator + month + seperator + day;
   }
   else {
      alert("��¥ �Է��� Ʋ�Ƚ��ϴ�");
      DateField.select();
          DateField.focus();
   }
}
// -->

