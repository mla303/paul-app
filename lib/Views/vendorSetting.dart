import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:dashed_container/dashed_container.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:paul_app/Views/vendorAccount.dart';
import 'package:paul_app/widgets/CustomButton.dart';
import 'package:paul_app/widgets/CustomTextField.dart';
import 'package:paul_app/widgets/appBar.dart';
import 'package:paul_app/widgets/colors.dart';
import 'package:paul_app/widgets/styles.dart';

class VendorSetting extends StatefulWidget {
  @override
  _VendorSettingtState createState() => new _VendorSettingtState();
}

class _VendorSettingtState extends State<VendorSetting> {
  @override
  Widget build(BuildContext context) {
    GroupController controller = GroupController();
    bool multiSelection = false;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Color(0xfff7f7f7),

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Shopper setting', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color: Colors.black),
        ),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height / 30,
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    height: height / 23,
                    width: width / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,
                    ),
                    child: Center(
                      child: Text(
                        'Your shop style',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),

                //Upload up to 6 photos here
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    height: height / 30,
                    width: width / 3,
                    child: Center(
                      child: Text(
                        'Your Face & Banner',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 49,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
               SizedBox(height: height/70,),
               Padding(
                 padding: const EdgeInsets.only(left:10.0, right: 15.0),
                 child: Row(children: [
                   ImageUploadContainer(),
                   SizedBox(width: width/60,),
                   ImageUploadContainer(),
                 ],),
               ),

                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    // height: height / 25,
                    width: width / 1.2,
                    child: Center(
                      child: Text(
                        'psssst... You do not have to show your face... you cold add a logo:) ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: largeTextField(
                    hinttext: "Your story... About you... Why do you do what you do?",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    height: height / 25,
                    width: width / 2.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,
                    ),
                    child: Center(
                      child: Text(
                        'Receive your cash via...',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height / 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                   // height: height / 15,
                    width: width / 1.2,
                    child: Center(
                      child: Text(
                        'Your payments will be processed via our Friends at stripe, who process some of the Biggest companies in the world… Their fee is Also way lower, so you receive more of your Hard earned cash :)                                                      ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Connect to Stripe',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 50,
                              fontWeight: FontWeight.w400),

                        ),
                        Icon(Icons.arrow_forward_ios, size: height/50, color: Colors.grey, )
                      ],),
                  ),
                ),
                SizedBox(height: height/70,),
                Divider(
                  color: Colors.grey,

                ),
                SizedBox(height: height/60,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    height: height / 25,
                    width: width / 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,
                    ),
                    child: Center(
                      child: Text(
                        'Postage profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height/70,),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: Container(
                    //height: height / 15,
                    width: width / 1.2,
                    child: Center(
                      child: Text(
                        ' Below you will set a shop wide postage cost. This will set the same price across all of your Items)                                                      ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: InkWell(
                    onTap: ()
                    {
                      // Navigator.pushNamed(context, "/forgetPassword");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dispatch time',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 50,
                              fontWeight: FontWeight.w400),

                        ),
                        Icon(Icons.arrow_forward_ios, size: height/50, color: Colors.grey, )
                      ],),
                  ),
                ),
                SizedBox(height: height/70,),
                Divider(
                  color: Colors.grey,

                ),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: CustomTextField(
                    hinttext: "1st item cost",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: CustomTextField(
                    hinttext: "Every-item after the 1st will cost ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: CustomTextField(
                    hinttext: "Minimum order total for free postage ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/60,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: Container(
                    height: height / 25,
                    width: width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,
                    ),
                    child: Center(
                      child: Text(
                        'Policies',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: Container(
                    height: height / 15,
                    width: width / 1.3,
                    child: Center(
                      child: Text(
                        'These are important. e.g I send all items Royal Mail signed… & I offer 14 days to your return                                                      ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height / 55,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height/70,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: largeTextField(
                    hinttext: "Postage policy  ",
                    obscureText: false,
                    textInputType: TextInputType.text,

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: largeTextField(
                    hinttext: "Refund policy  ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: Container(
                    height: height / 27,
                    width: width / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: basicColorShopper,
                    ),
                    child: Center(
                      child: Text(
                        'Having a break',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height / 50,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),
                  child: SimpleGroupedCheckbox<int>(
                    controller: controller,
                    itemsTitle: ["Switch on" ,"Disable sales while away",],
                    values: [1,2],
                    // groupTitleStyle: TextStyle(color: Colors.red,fontSize: 54),
                    activeColor: basicColorcustomer ,
                    isCirculaire: true,
                    checkFirstElement: false,

                  ),
                ),
                SizedBox(height: height/60,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: CustomTextField(
                    hinttext: "Add an away message to inform your customers that you are away & when you are back ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                ),
                SizedBox(height: height/20,),
                Padding(
                  padding: const EdgeInsets.only(left:15.0, right: 15.0),

                  child: Center(
                    child: ShopperButton(
                      text: Text(
                        "Save all of that",
                        style: CustomTextStyle.buttontitle(context),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (Context) => VendorAccount()));
                      },
                      color: basicColorShopper,
                      focusColor: buttonColor2,
                      disbaleColor: buttonColor2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class ImageUploadContainer extends StatelessWidget {
  ImageUploadContainer({this.onTap});
  final Function onTap;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: DashedContainer(
          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt_rounded,
                  color: basicColorShopper,
                  size: 18,
                ),
                Text(
                  'Your Face',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height / 60,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            height: 70,
            width: 70.0,
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
          ),
          dashColor: basicColorShopper,
          borderRadius: 4.0,
          dashedLength: 6.0,
          blankLength: 5.0,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}