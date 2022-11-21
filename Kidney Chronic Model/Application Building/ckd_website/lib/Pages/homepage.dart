import 'package:ckd_website/Pages/toggle.dart';
import 'package:ckd_website/theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.Controller}) : super(key: key);
  final TextEditingController Controller;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final _blood = TextEditingController();
final _bloodran = TextEditingController();
final _redblood = TextEditingController();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.medical_services_rounded,
          color: KFourthColor,
        ),
        title: Text(
          "Medico",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: KPrimaryColor.withOpacity(0.6),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 5,
                width: 70,
                decoration: BoxDecoration(
                  color: KSecondaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: KFifthColor,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 5, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 58,
                  fontWeight: FontWeight.w800,
                  color: KSecondaryColor,
                ),
              ),
              Text(
                "Let's Analyse your health\nat no cost!",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: KFourthColor,
                ),
              ),
              Divider(
                color: KFourthColor.withOpacity(0.5),
                thickness: 0.5,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Chronic Kidney Analysis:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: KPrimaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.health_and_safety_rounded,
                    color: KFourthColor,
                  )
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _bloodran,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KFourthColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KFourthColor),
                        ),
                        labelText: "Blood Urea",
                        hintStyle: TextStyle(color: KFourthColor),
                        labelStyle:
                            TextStyle(color: KSecondaryColor, fontSize: 12),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _blood,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KFourthColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: KFourthColor),
                        ),
                        labelText: "Blood Glucose Random",
                        hintStyle: TextStyle(color: KFourthColor),
                        labelStyle:
                            TextStyle(color: KSecondaryColor, fontSize: 12),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 150,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: _redblood,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: KFourthColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: KFourthColor),
                          ),
                          labelText: "Red Blood Cells",
                          hintStyle: TextStyle(color: KFourthColor),
                          labelStyle:
                              TextStyle(color: KSecondaryColor, fontSize: 12),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              ToggleSwicthWeb(
                txt: "Anemia",
              ),
              ToggleSwicthWeb(
                txt: "Coronary Disease",
              ),
              ToggleSwicthWeb(
                txt: "Pus Cells",
              ),
              ToggleSwicthWeb(
                txt: "Diabetesmellitus",
              ),
              ToggleSwicthWeb(
                txt: "Petal Edema",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: BoxDecoration(
                        color: KPrimaryColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Analyze",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: KFifthColor,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Results:       You don't have Chronic Kidney Disease",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: KSecondaryColor,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
