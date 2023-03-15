import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxx/controllers/tap_controller.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Get.back();
        },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body:  Column(
        children: [
          GetBuilder<TapController>(
            builder: (co){
              return  GestureDetector(
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

                  child: Center(child: Text(controller.x.toString(),style: TextStyle(color: Colors.white),)),
                ),
              );
            },

          ),
          GestureDetector(
            onTap: ()
            {
controller.decreaseX();
            },
            child: Container(
              width: double.maxFinite,
              height: 100,
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.teal.shade300,
                borderRadius: BorderRadius.circular(22),
              ),

              child: Center(child: Text("Decrease",style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],
      ),
    );
  }
}
