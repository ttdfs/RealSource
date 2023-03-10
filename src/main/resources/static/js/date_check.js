
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
   /* 숫자가 아닌 문자 삭제 */
   for (i = 0; i < DateValue.length; i++) {
          if (checkstr.indexOf(DateValue.substr(i,1)) >= 0) {
             DateTemp = DateTemp + DateValue.substr(i,1);
          }
   }
   DateValue = DateTemp;

   /* 날짜를 여덟자리로 변환*/
   /* 연도가 2자리로 입력 된다면 20 을 추가 */

   if (DateValue.length == 6) {
      DateValue = '20' + DateValue.substr(0,6); }
   if (DateValue.length != 8) {
      err = 19;}

   /* 년도가 0000 으로 입력되는지 체크 */
   year = DateValue.substr(0,4);
   if (year == 0) {
      err = 20;
   }
   /* 월의 유효성 체크 */
   month = DateValue.substr(4,2);
   if ((month < 1) || (month > 12)) {
      err = 21;
   }
   /* 날짜의 유효성 체크 */
   day = DateValue.substr(6,2);
   if (day < 1) {
     err = 22;
   }
   /* 윤년/2월 체크 */
   if ((year % 4 == 0) || (year % 100 == 0) || (year % 400 == 0)) {
      leap = 1;
   }
   if ((month == 2) && (leap == 1) && (day > 29)) {
      err = 23;
   }
   if ((month == 2) && (leap != 1) && (day > 28)) {
      err = 24;
   }
   /* 기타 월의 유효성 체크  */
   if ((day > 31) && ((month == "01") || (month == "03") || (month == "05") || (month == "07") || (month == "08") || (month == "10") || (month == "12"))) {
      err = 25;
   }
   if ((day > 30) && ((month == "04") || (month == "06") || (month == "09") || (month == "11"))) {
      err = 26;
   }
   /* 00 입력시 입력내용 삭제 */
   if ((day == 0) && (month == 0) && (year == 00)) {
      err = 0; day = ""; month = ""; year = ""; seperator = "";
   }
   /* 에러가 없다면 날짜 출력 */
   if (err == 0) {
      DateField.value = year + seperator + month + seperator + day;
   }
   else {
      alert("날짜 입력이 틀렸습니다");
      DateField.select();
          DateField.focus();
   }
}
// -->

