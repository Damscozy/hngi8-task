import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    final descController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(
          child: Text(
            "HNG8 Task",
            style: TextStyle(
              fontFamily: "Sofia Pro",
              fontSize: 24,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            // height: 50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                              ),
                              child: Image.asset(
                                "assets/images/hng.png",
                                height: 50,
                                width: 100,
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Welcome To HNG8",
                              style: TextStyle(
                                fontSize: 24,
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Icon(
                                Icons.close_outlined,
                                color: Colors.redAccent,
                              ),
                            ),
                          ),
                          ListTile(
                            title: TextField(
                              controller: nameController,
                              decoration: InputDecoration(
                                hintText: "full name",
                                hintStyle: TextStyle(),
                                labelText: "Full Name",
                                labelStyle: TextStyle(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            title: TextField(
                              controller: descController,
                              decoration: InputDecoration(
                                focusColor: Colors.red,
                                hintText: "about",
                                hintStyle: TextStyle(),
                                labelText: "About",
                                labelStyle: TextStyle(),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.blue,
                              height: 55,
                              width: double.infinity,
                              child: Center(
                                child: TextButton(
                                  onPressed: () {
                                    box.write('name', nameController.text);
                                    box.write('desc', descController.text);
                                    Get.toNamed('/result');
                                    box.listen(() {
                                      print(box.read('name'));
                                    });
                                    box.listen(() {
                                      print(box.read('desc'));
                                    });
                                  },
                                  child: Text(
                                    "Check Output",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  elevation: 20,
                  backgroundColor: Colors.white,
                  isDismissible: false,
                  enableDrag: false,
                  barrierColor: Colors.white12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                );
                //
              },
              child: Padding(
                padding: const EdgeInsets.all(
                  20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_downward_outlined,
                    ),
                    Text(
                      "TAP HERE TO TEST THE TASK",
                      style: TextStyle(
                        backgroundColor: Colors.black45,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "INTERNSHIP OPPORTUNITY BROUGHT TO YOU BY:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/zuri.png",
                              height: 100,
                              width: double.infinity,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "X",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Image.asset(
                              "assets/images/I4G-Logo.png",
                              height: 100,
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "THROUGH:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      "assets/images/hng.png",
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
