class DateFinder{
  final day = DateTime.now().day;
  int weekday = DateTime.now().weekday;
  int month = DateTime.now().month;
  final hour = DateTime.now().hour;
  String weekDayName="";
  String monthName="";

  DateFinder(){
    if (hour >= 18) {
      weekday = (weekday % 7) + 1;
    }

    dayNumToName();
    monthNumToName();

  }

  void monthNumToName(){
    switch(month){
      case 1:
        monthName="January";
        break;
      case 2:
        monthName="February";
        break;
      case 3:
        monthName="March";
        break;
      case 4:
        monthName="April";
        break;
      case 5:
        monthName="May";
        break;
      case 6:
        monthName="June";
        break;
        case 7:
        monthName="July";
        break;
      case 8:
        monthName="August";
        break;
      case 9:
        monthName="September";
        break;
      case 10:
        monthName="October";
        break;
      case 11:
        monthName="November";
        break;
        case 12:
        monthName="December";
        break;

    }

  }

  void dayNumToName(){
    switch(weekday){
      case 1:
        weekDayName="Monday";
        break;
      case 2:
        weekDayName="Tuesday";
        break;
      case 3:
        weekDayName="Wednesday";
        break;
      case 4:
        weekDayName="Thursday";
        break;
      case 5:
        weekDayName="Friday";
        break;
      case 6:
        weekDayName="Saturday";
        break;
      case 7:
        weekDayName="Sunday";
        break;
    }
  }

  String getCalanderInfo(){

    if(weekDayName=="" || monthName == ""){
      throw Exception();
    }
    return "$weekDayName $day $monthName";
  }

  int getDay(){
    return day;
  }
  int getHour(){
    return hour;
  }
  int getWeekday(){
    return weekday;
  }
}
