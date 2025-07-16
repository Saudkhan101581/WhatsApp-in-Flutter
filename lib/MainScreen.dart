import 'package:flutter/material.dart';

class MainScreen1 extends StatefulWidget {
  const MainScreen1({super.key});

  @override
  State<MainScreen1> createState() => _MainScreen1State();
}

class _MainScreen1State extends State<MainScreen1> {
  TextEditingController todayController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  int isSelected = 0;

  int ageYears = 0;
  int ageMonths = 0;
  int ageDays = 0;
  int nextBirthdayMonths = 0;
  int nextBirthdayDays = 0;

  ///Todo Creating Function :
  void calculateAge() {
    try {
      DateTime todayDate = DateTime.parse(todayController.text.trim());
      DateTime DateOfBirth = DateTime.parse(dateController.text.trim());
      if (DateOfBirth.isAfter(todayDate)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Date of birth can't be after today")),
        );
        return;
      }
      int years = todayDate.year - DateOfBirth.year;
      int months = todayDate.month - DateOfBirth.month;
      int days = todayDate.day - DateOfBirth.day;

      if (days < 0) {
        months--;
        days += DateTime(todayDate.year, todayDate.month, 0).day;
      }
      if (months < 0) {
        years--;
        months += 12;
      }

      ///todo Now we are finding next birth day:

      DateTime nextBirthDay = DateTime(
        todayDate.year,
        DateOfBirth.month,
        DateOfBirth.day,
      );
      {
        if (nextBirthDay.isBefore(todayDate)) {
          nextBirthDay = DateTime(
            todayDate.year + 1,
            DateOfBirth.month,
            DateOfBirth.day,
          );
        }
        ;

        ///todo Now we find the difference from TodayDate to DAteOfBorth:

        Duration differen = nextBirthDay.difference(todayDate);
        int nMonths = (differen.inDays / 30).floor();
        int nDays = (differen.inDays % 30);

        setState(() {
          ageYears = years;
          ageMonths = months;
          ageDays = days;
          nextBirthdayMonths = nMonths;
          nextBirthdayDays = nDays;
        });

        ///todo Another Function Clear Purpose:

        // void clearFields(){
        //   todayController.clear();
        //   dateController.clear();
        //   setState(() {
        //     years=0;
        //     months=0;
        //     days=0;
        //     nMonths=0;
        //     nDays=0;
        //   });
        // }//ClearVlaues Function compleated here.
      } // Finding birhDay date is completed here.
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Please enter date in yyyy-mm-dd this formate")),
      );
    }
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              'Calculate Your Age',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 630,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        '          Todays date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),

                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Icon(Icons.calendar_month),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            controller: todayController,
                            decoration: InputDecoration(
                              hintText: "yyyy-MM-DD",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        '          Date Of Birth',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          blurRadius: 15,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),

                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        Icon(Icons.calendar_month),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextFormField(
                            controller: dateController,
                            decoration: InputDecoration(
                              hintText: "yyyy-MM-DD",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          todayController.clear();
                          dateController.clear();
                          setState(() {
                            ageYears = 0;
                            ageMonths = 0;
                            ageDays = 0;
                            nextBirthdayMonths = 0;
                            nextBirthdayDays = 0;
                          });
                          if (isSelected == 1) {
                            isSelected = 2;
                          } else {
                            isSelected = 1;
                          }
                          setState(() {});
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            color:
                                isSelected == 1
                                    ? Colors.blue
                                    : Colors.transparent,
                            border: Border.all(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Clear',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (isSelected == 1) {
                            isSelected = 2;
                          } else {
                            isSelected = 1;
                          }
                          setState(() {});

                          calculateAge();
                        },
                        child: Container(
                          height: 50,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                            color:
                                isSelected == 2
                                    ? Colors.blue
                                    : Colors.transparent,
                          ),
                          child: Center(
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        '          Your age',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Years',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$ageYears',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Months',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$ageMonths',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Days',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$ageDays',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    children: [
                      Text(
                        '          Next Birthday',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Months',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$nextBirthdayMonths',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(height: 5),
                            Text(
                              'Days',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '$nextBirthdayDays',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
