<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 달력 */
html, body {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

*, *:before, *:after {
  box-sizing: inherit;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
  float: none;
}

container{
	position : absolute;
	left: 50%;
	top: 50%;
	transform: translate(-45%, -50%);
	width:400px;
	height:400px;
	color:#fff;
	font-size: 24px;
}
/* ======== Calendar ======== */
.my-calendar {
  width: 700px;
  margin: 30px;
  padding: 20px 20px 10px;
  text-align: center;
  font-weight: 800;
  border: 1px solid #ddd;
  cursor: default;
}
.my-calendar .clicked-date {
  border-radius: 25px;
  margin-top: 36px;
  float: left;
  width: 42%;
  padding: 46px 0 26px;
  background: #ddd;
}
.my-calendar .calendar-box {
  float: right;
  width: 58%;
  padding-left: 30px;
}

.clicked-date .cal-day {
  font-size: 24px;
}
.clicked-date .cal-date {
  font-size: 130px;
}

.ctr-box {
  padding: 0 16px;
  margin-bottom: 20px;
  font-size: 20px;
}
.ctr-box .btn-cal {
  position: relative;
  float: left;
  width: 25px;
  height: 25px;
  margin-top: 5px;
  font-size: 16px;
  cursor: pointer;
  border: none;
  background: none;
}
.ctr-box .btn-cal:after {
  content: '<';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  line-height: 25px;
  font-weight: bold;
  font-size: 20px;
}
.ctr-box .btn-cal.next {
  float: right;
}
.ctr-box .btn-cal.next:after {
  content: '>';
}

.cal-table {
  width: 100%;
}
.cal-table th {
  width: 14.2857%;
  padding-bottom: 5px;
  font-size: 16px;
  font-weight: 900;
}
.cal-table td {
  padding: 3px 0;
  height: 50px;
}

</style>
</head>
<body>
	<div class="container">
	  <div class="my-calendar clearfix">
	    <div class="clicked-date">
	      <div class="cal-day"></div>
	      <div class="cal-date"></div>
	    </div>
	    <div class="calendar-box">
	      <div class="ctr-box clearfix">
	        <button type="button" title="prev" class="btn-cal prev">
	        </button>
	        <span class="cal-month"></span>
	        <span class="cal-year"></span>
	        <button type="button" title="next" class="btn-cal next">
	        </button>
	      </div>
	      <table class="cal-table">
	        <thead>
	          <tr>
	            <th>S</th>
	            <th>M</th>
	            <th>T</th>
	            <th>W</th>
	            <th>T</th>
	            <th>F</th>
	            <th>S</th>
	          </tr>
	        </thead>
	        <tbody class="cal-body"></tbody>
	      </table>
	    </div>
	  </div>
	  <!-- // .my-calendar -->
	</div>
	<script>
		// ================================
		// START YOUR APP HERE
		// ================================
		const init = {
		  monList: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
		  dayList: ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'],
		  today: new Date(),
		  monForChange: new Date().getMonth(),
		  activeDate: new Date(),
		  getFirstDay: (yy, mm) => new Date(yy, mm, 1),
		  getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
		  nextMonth: function () {
		    let d = new Date();
		    d.setDate(1);
		    d.setMonth(++this.monForChange);
		    this.activeDate = d;
		    return d;
		  },
		  prevMonth: function () {
		    let d = new Date();
		    d.setDate(1);
		    d.setMonth(--this.monForChange);
		    this.activeDate = d;
		    return d;
		  },
		  addZero: (num) => (num < 10) ? '0' + num : num,
		  activeDTag: null,
		  getIndex: function (node) {
		    let index = 0;
		    while (node = node.previousElementSibling) {
		      index++;
		    }
		    return index;
		  }
		};
	
		const $calBody = document.querySelector('.cal-body');
		const $btnNext = document.querySelector('.btn-cal.next');
		const $btnPrev = document.querySelector('.btn-cal.prev');
	
		/**
		 * @param {number} date
		 * @param {number} dayIn
		*/
		function loadDate (date, dayIn) {
		  document.querySelector('.cal-date').textContent = date;
		  document.querySelector('.cal-day').textContent = init.dayList[dayIn];
		}
	
		/**
		 * @param {date} fullDate
		 */
		function loadYYMM (fullDate) {
		  let yy = fullDate.getFullYear();
		  let mm = fullDate.getMonth();
		  let firstDay = init.getFirstDay(yy, mm);
		  let lastDay = init.getLastDay(yy, mm);
		  let markToday;  // for marking today date
		  
		  if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
		    markToday = init.today.getDate();
		  }
	
		  document.querySelector('.cal-month').textContent = init.monList[mm];
		  document.querySelector('.cal-year').textContent = yy;
	
		  let trtd = '';
		  let startCount;
		  let countDay = 0;
		  for (let i = 0; i < 6; i++) {
		    trtd += '<tr>';
		    for (let j = 0; j < 7; j++) {
		      if (i === 0 && !startCount && j === firstDay.getDay()) {
		        startCount = 1;
		      }
		      if (!startCount) {
		        trtd += '<td>'
		      } else {
		        let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
		        trtd += '<td class="day';
		        trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
		        trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
		      }
		      trtd += (startCount) ? ++countDay : '';
		      if (countDay === lastDay.getDate()) { 
		        startCount = 0; 
		      }
		      trtd += '</td>';
		    }
		    trtd += '</tr>';
		  }
		  $calBody.innerHTML = trtd;
		}
	
		/**
		 * @param {string} val
		 */
		function createNewList (val) {
		  let id = new Date().getTime() + '';
		  let yy = init.activeDate.getFullYear();
		  let mm = init.activeDate.getMonth() + 1;
		  let dd = init.activeDate.getDate();
		  const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);
	
		  let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);
	
		  let eventData = {};
		  eventData['date'] = date;
		  eventData['memo'] = val;
		  eventData['complete'] = false;
		  eventData['id'] = id;
		  init.event.push(eventData);
		  $todoList.appendChild(createLi(id, val, date));
		}
	
		loadYYMM(init.today);
		loadDate(init.today.getDate(), init.today.getDay());
	
		$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
		$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));
	
		$calBody.addEventListener('click', (e) => {
		  if (e.target.classList.contains('day')) {
		    if (init.activeDTag) {
		      init.activeDTag.classList.remove('day-active');
		    }
		    let day = Number(e.target.textContent);
		    loadDate(day, e.target.cellIndex);
		    e.target.classList.add('day-active');
		    init.activeDTag = e.target;
		    init.activeDate.setDate(day);
		    reloadTodo();
		  }
		});
	</script>

</body>
</html>