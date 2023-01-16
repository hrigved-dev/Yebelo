import 'package:app/constants.dart';
import 'package:app/widgets/counter_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CustomButton extends StatefulWidget {
  String name;
  CustomButton({super.key, required this.name});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(context: context, builder: ((context) {
          return Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(kdoubleradius), topRight: Radius.circular(kdoubleradius)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  const Text("Please enter the quantity", style: TextStyle(fontSize: 18),),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CounterButton(
                        sign: "-",
                        onTap: () {
                          setState(() {
                            count = count - 1;
                          });
                        },
                      ),
                      const SizedBox(width: 10,),
                      Text(count.toString(), style: const TextStyle(fontSize: 22),),
                      const SizedBox(width: 10,),
                      CounterButton(
                        sign: "+",
                        onTap: () {
                          setState(() {
                            count = count + 1;
                          });
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kdoubleradius)
                    ),
                    minWidth: double.infinity,
                    height: 50,
                    onPressed: () {
                      showDialog(context: context, builder: (BuildContext context){
                        return AlertDialog(
                        title: const Text("Success"),
                            content: Container(
                              height: 80,
                              width: 80,
                              child: Column(
                                children: [
                                  Lottie.asset('assets/animations/success.json', height: 50, width: 50),
                                  const Text("Quantity added!"),
                                ],
                              ),
                            ),
                        );
                      });
                  }, color: kbuttoncolor, child: Text("Add", style: TextStyle(color: Colors.black, fontSize: 20),),)
                ],
              ),
            ),
          );
        }));
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: kbuttoncolor,
          borderRadius: BorderRadius.circular(kdoubleradius),
        ),
        child: const Center(child: Text("Add Quantity", style: TextStyle(color: Colors.black, fontSize: 18),)),
      ),
    );
  }
}