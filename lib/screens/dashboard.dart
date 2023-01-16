import 'package:app/constants.dart';
import 'package:app/model/item_model.dart';
import 'package:app/services/json_service.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/custom_pill.dart';
import 'package:app/widgets/items.dart';
import 'package:app/widgets/search_button.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<ItemModel> finalItemList = [];
  List<ItemModel> tempItemList = [];
  bool _isLoading = true;
  var choice = "All";
  JsonService jsonService = JsonService();

  getJsonData(var choice) async {
    if(choice == "All") {
      finalItemList.clear();
      await jsonService.getAllData();
      finalItemList = jsonService.itemList;
    }
    else if(choice == "Premium") {

      await jsonService.getAllData();
      tempItemList = jsonService.itemList;
  
      for (int i = 0; i < tempItemList.length; i++) {
        if(tempItemList[i].category == "Premium") {
          finalItemList.add(tempItemList[i]);
        }
      }
    }
    else {

      for (int i = 0; i < tempItemList.length; i++) {
        if(tempItemList[i].category == "Tamilnadu") {
          finalItemList.add(tempItemList[i]);
        }
      }

    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getJsonData(choice);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const SizedBox(height: 10,),
            const SearchButton(),
            const SizedBox(height: 30,),
            const Text("Categories", style: kproductTextStyle,),
            //Filter
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomPill(choice: "All", onTap: () {
                  setState(() {
                    choice = "All";
                    getJsonData(choice);
                  });
                },),
                CustomPill(choice: "Premium", onTap: () {
                  setState(() {
                    finalItemList.clear();
                    choice = "Premium";
                    _isLoading = true;
                    getJsonData(choice);
                  });
                },),
                CustomPill(choice: "Tamil Nadu", onTap: () {
                  setState(() {
                    finalItemList.clear();
                    choice = "Tamilnadu";
                    getJsonData(choice);
                  });
                },),
              ],
            ),
            _isLoading ? const Padding(
              padding: EdgeInsets.only(top: 100),
              child: 
                Center(
                  child: Text("Loading..."),),
            ) : Items(itemList: finalItemList,),
          ],
        ),
      ),
    );
  }
}