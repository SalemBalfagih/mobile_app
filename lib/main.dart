import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppstate();
  }
}


class MyAppstate extends State<MyApp> {
  // ignore: prefer_final_fields
  TextEditingController _textcontroller = TextEditingController();
  double _result = 0.0;
  double _total = 0.0;

  void _calcul() {
    double nember = double.parse(_textcontroller.text);
    setState(() {
      _result = nember * 0.75;
    });
  }

  void _calcul2() {
    double nember = double.parse(_textcontroller.text);
    setState(() {
      _total = nember * 0.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        backgroundColor: const Color.fromARGB(255, 5, 5, 5),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'عزبة المهاجرين',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.amber[700]),
                    )),
               
                Container(
                    alignment: Alignment.topCenter,
                    child: const Text(
                      "برنامج لحساب مقادير العشاء و الغداء",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 186, 184, 184),
                      ),
                    )),
                const SizedBox(
                  height: 50,
                ),
                Container(
                    alignment: Alignment.center,
                    child: const Text(
                      'أدخل عدد الاشخاص الموجودين',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 186, 184, 184),
                      ),
                    )),
                
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 244, 243, 242),
                  ),
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        textAlign: TextAlign.center,
                        controller: _textcontroller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            hintText: "عدد الاشخاص",
                         
                                ),
                      ),
                      // TextField(
                      //     decoration: InputDecoration(
                      //   label: Text("Password"),
                      //   suffixIcon: TextButton(
                      //     onPressed: () {},
                      //     child: Text("Forgot password?",
                      //         style: TextStyle(fontSize: 17,color: Colors.amber)),
                      //   ),
                      // )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      color: Colors.amber[700],),
                  child: MaterialButton(
                    minWidth: 400,
                    padding: const EdgeInsets.all(8),
                    onPressed: () {
                      _calcul();
                      _calcul2();
                    },
                    
                    child: const Text(
                      'عدد العلب',
                      style: TextStyle(
                        color: Color.fromARGB(255, 7, 7, 7),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(221, 77, 76, 76)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: const Text(
                            ' علبة  للعشاء (دقيق) ',
                            style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 255, 255, 255)),
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            '$_result',
                            style: TextStyle(fontSize: 25, color:Colors.amber[700]),
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                     
                    ],
                  ),
                ),
                const Divider(color: Color.fromARGB(255, 243, 241, 237),height: 5,thickness: 5),
                Container(
                   decoration: const BoxDecoration(
                    color: Color.fromARGB(221, 77, 76, 76)
                  ),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     
                      Container(
                          alignment: Alignment.center,
                          child: const Text(
                            ' علبة  للغداء (رز) ',
                            style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 247, 247, 247)),
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            '$_total',
                            style: TextStyle(fontSize: 25, color:Colors.amber[700]),
                          )
                          ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.amber[700],
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),

                    const Text(
                      "مقدار العلبة = علبة فول",
                      style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.amber[700],
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "lib/images/icons8_facebook_64.png",
                      height: 55,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("lib/images/icons8_instagram_64.png", height: 55),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("lib/images/icons8_whatsapp_64.png",
                        height: 55),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      "DEV:SALEM BALFAQIH 773139096",
                      style: TextStyle(fontSize: 12, color: Colors.amber[700]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
