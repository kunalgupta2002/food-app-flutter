import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:insta_app/widget/widget_support.dart";

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
          ),
          Image.asset(
            "build/images/salad2.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mediterranean",
                    style: AppWidget.semiBoldTextFieldStyle(),
                  ),
                  Text(
                    "Chickpea Salad",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  if (a > 1) {
                    --a;
                  }
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                a.toString(),
                style: AppWidget.semiBoldTextFieldStyle(),
              ),
              SizedBox(
                width: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  ++a;
                  setState(() {});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "This chickpea salad recipe is packed with fresh herbs, juicy grape tomatoes, velvety roasted red peppers, crisp cucumber, and creamy avocado. This Mediterranean chickpea salad is delicious and satisfying, thanks to the high plant-based protein and fiber content. Best part? It’s ready in 10 minutes!",maxLines: 4,
            style: AppWidget.lightTextFieldStyle(),
          ),
          SizedBox(height: 30.0,),
          Row(children: [
            Text("Delivery Time",style: AppWidget.semiBoldTextFieldStyle(),),
            SizedBox(width: 25.0,),
            Icon(Icons.alarm,color:Colors.black,),
            SizedBox(width: 5.0,),
            Text("30 min",style: AppWidget.semiBoldTextFieldStyle(),),
          ],),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Total price",style: AppWidget.semiBoldTextFieldStyle(),),
                Text("\$28",style: AppWidget.headlineTextFieldStyle(),)
              ],),
              Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color:Colors.black,borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 16.0),),
                SizedBox(width: 30.0,),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(color:Colors.grey,borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.shopping_cart_outlined,color:Colors.white),),
                  SizedBox(width: 10.0,),
              ],),),
            ],),
          )
        ],
      ),
    ));
  }
}
