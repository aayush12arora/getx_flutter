import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/controllers/tap_controller.dart';
import 'package:getxx/first_page.dart';

import 'controllers/adult cheker.dart';
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nametext= TextEditingController();
    TapController tapController = Get.put(TapController());
    AdController adController = Get.put(AdController());
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              GetBuilder<AdController>(
                builder: (adController) { return Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Center(child: adController.y?Text(adController.msg.toString(),style: TextStyle(color: Colors.white),):Text(adController.msg.toString(),style: TextStyle(color: Colors.red),),
                ) );},

              ),

              GetBuilder<TapController>(
                builder: (Controller) { return Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.teal.shade300,
                      borderRadius: BorderRadius.circular(22),
                    ),

                    child: Center(child: Text(Controller.x.toString(),style: TextStyle(color: Colors.white),),
                    ) );},

              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                 onChanged: (value){
                   adController.Isadult(int.parse(nametext.text));
                 },
                  //   obscureText: true,
                  controller:  nametext,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    hintText: 'Enter age',
                  ),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
tapController.increaseX();
                },
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Center(child: Text("tap",style: TextStyle(color: Colors.white),)),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
Get.to(()=>FirstPage());
                },
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Center(child: Text("go to",style: TextStyle(color: Colors.white),)),
                ),
              ),
              GestureDetector(
                onTap: ()
                {

                },
                child: Container(
                  width: double.maxFinite,
                  height: 100,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade300,
                    borderRadius: BorderRadius.circular(22),
                  ),

                  child: Center(child: Text("tap",style: TextStyle(color: Colors.white),)),
                ),
              ),
              // GestureDetector(
              //   onTap: ()
              //   {
              //
              //   },
              //   child: Container(
              //     width: double.maxFinite,
              //     height: 100,
              //     margin: EdgeInsets.all(6),
              //     decoration: BoxDecoration(
              //       color: Colors.teal.shade300,
              //       borderRadius: BorderRadius.circular(22),
              //     ),
              //
              //     child: Center(child: Text("tap",style: TextStyle(color: Colors.white),)),
              //   ),
              // ),




            ],
          ),
        ),
      ),
    );
  }
}
