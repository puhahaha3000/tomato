const calendar = document.getElementById("calendar");
const calendar_YM = document.getElementById("calendar_YM");
const calendar_body = calendar.getElementsByTagName("TBODY")[0];

let today = new Date();
let date = new Date();

let row, cell;
let cnt = 0;

function prevCalendar() {
  today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());

  buildCalendar();
} //prevCalendar

function nextCalendar() {
  today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());

  buildCalendar();
} //nextCalendar

function buildCalendar() {
  let doMonth = new Date(today.getFullYear(), today.getMonth(), 1);
  let lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0);

  display_YM(); //연도,월 출력

  reset_calendar(doMonth); // 달력 리셋

  display_calendar(lastDate); //일 생성
} //buildCalendar

function display_YM() {
  calendar_YM.innerHTML = `
        ${today.getFullYear()}년 ${today.getMonth() + 1}월
    `;
} //display_YM

function reset_calendar(doMonth) {
  calendar_body.innerHTML = "";

  row = null;
  row = calendar_body.insertRow();
  cnt = 0;

  for (let i = 0; i < doMonth.getDay(); i++) {
    cell = row.insertCell();
    cnt++;
  }
} //reset_calendar

function display_calendar(lastDate) {
  for (let i = 1; i <= lastDate.getDate(); i++) {
    cell = row.insertCell();
    cell.innerHTML = i;
    cnt++;

    if (cnt % 7 == 1) {
      cell.classList.add("sunday");
    }

    if (cnt % 7 == 0) {
      cell.classList.add("saturday");
      row = calendar_body.insertRow();
    } //if

    display_today(i);
  } //for
} //display_calendar

function display_today(i) {
  const is_today_true = is_today(i);
  if (is_today_true) {
    cell.classList.add("today");
  }
} //display_today

function is_today(i) {
  if (
    today.getFullYear() == date.getFullYear() &&
    today.getMonth() == date.getMonth() &&
    i == date.getDate()
  ) {
    return true;
  }
} //is_todaay

/* ✨ 실행 */
buildCalendar();
