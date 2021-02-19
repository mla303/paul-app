  import 'package:checkbox_grouped/checkbox_grouped.dart';
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
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('Shop setting', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          iconTheme: IconThemeData(color: Colors.black),
        ),

        body: Container(
          height: height,
          width: width,
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height / 30,
                  ),

                  Container(
                    height: height / 28,
                    width: width / 2.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                  //SizedBox(height: height/70,),
                  //Upload up to 6 photos here
                  Container(
                    height: height / 35,
                    width: width / 3,
                    child: Center(
                      child: Text(
                        'Your Face & Banner',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 60,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                 SizedBox(height: height/70,),
                 Row(children: [
                   Container(

                     child: DottedBorder(
                       color: basicColorShopper,//color of dotted/dash line
                       strokeWidth: 2, //thickness of dash/dots
                       dashPattern: [10,6],
                       child: Container(
                         height: height/10,
                         width: width/4,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.camera_alt_outlined, size: height/40, color: basicColorShopper, ),
                             SizedBox(
                               height: height/70,
                             ),
                             Text(
                               'Your Face',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: height / 60,
                                   fontWeight: FontWeight.w400),
                             ),
                         ],),
                       ),
                     ),
                   //   decoration: BoxDecoration(
                   //   color: Colors.grey,
                   //   // image: DecorationImage(
                   //   //   image: AssetImage(''),
                   //   //   fit: BoxFit.fill,
                   //   // )
                   // ),
                   ),
                   SizedBox(width: width/50,),
                   Container(

                     child: DottedBorder(
                       color: basicColorShopper,//color of dotted/dash line
                       strokeWidth: 2, //thickness of dash/dots
                       dashPattern: [10,6],
                       child: Container(
                         height: height/10,
                         width: width/4,
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.camera_alt_outlined, size: height/40, color: basicColorShopper, ),
                             SizedBox(
                               height: height/70,
                             ),
                             Text(
                               'Banner',
                               style: TextStyle(
                                   color: Colors.black,
                                   fontSize: height / 60,
                                   fontWeight: FontWeight.w400),
                             ),
                           ],),
                       ),
                     ),
                     //   decoration: BoxDecoration(
                     //   color: Colors.grey,
                     //   // image: DecorationImage(
                     //   //   image: AssetImage(''),
                     //   //   fit: BoxFit.fill,
                     //   // )
                     // ),
                   ),
                 ],),
                  SizedBox(height: height/70,),
                  Container(
                    height: height / 30,
                    width: width / 1.5,
                    child: Center(
                      child: Text(
                        'psssst... You do not have to show your face... you cold add a logo:) ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 70,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 70,
                  ),
                  CustomTextField(
                    hinttext: "Your story... About you... Why do you do what you do?",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: height / 70,
                  ),
                  Container(
                    height: height / 30,
                    width: width / 1.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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

                  Container(
                    height: height / 15,
                    width: width / 1.3,
                    child: Center(
                      child: Text(
                        'Your payments will be processed via our Friends at stripe, who process some of the Biggest companies in the world… Their fee is Also way lower, so you receive more of your Hard earned cash :)                                                      ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 70,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  InkWell(
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
                        Icon(Icons.arrow_forward_ios, size: height/50, color: Colors.grey[450], )
                      ],),
                  ),
                  SizedBox(height: height/70,),
                  Container(
                    height: height / 30,
                    width: width / 2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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


                  Container(
                    height: height / 15,
                    width: width / 1.5,
                    child: Center(
                      child: Text(
                        ' Below you will set a shop wide postage cost. This will set the same price across all of your Items)                                                      ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 70,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(height: height/70,),
                  InkWell(
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
                        Icon(Icons.arrow_forward_ios, size: height/50, color: Colors.grey[450], )
                      ],),
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField(
                    hinttext: "1st item cost",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField(
                    hinttext: "Every-item after the 1st will cost ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/70,),
                  CustomTextField(
                    hinttext: "Minimum order total for free postage ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/60,),
                  Container(
                    height: height / 35,
                    width: width / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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


                  Container(
                    height: height / 20,
                    width: width / 1.3,
                    child: Center(
                      child: Text(
                        'These are important. e.g I send all items Royal Mail signed… & I offer 14 days to return                                                      ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: height / 70,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),

                  SizedBox(height: height/70,),
                  CustomTextField(
                    hinttext: "Postage policy  ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/60,),
                  CustomTextField(
                    hinttext: "Postage policy  ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/60,),
                  Container(
                    height: height / 30,
                    width: width / 2.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
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
                  SizedBox(height: height/60,),
                  SimpleGroupedCheckbox<int>(
                    controller: controller,
                    itemsTitle: ["Switch on" ,"Disable sales while away",],
                    values: [1,2],
                    // groupTitleStyle: TextStyle(color: Colors.red,fontSize: 54),
                    activeColor: basicColorcustomer ,
                    isCirculaire: true,
                    checkFirstElement: false,

                  ),
                  SizedBox(height: height/60,),
                  CustomTextField(
                    hinttext: "Add an away message to inform your customers that you are away & when you are back ",
                    obscureText: false,
                    textInputType: TextInputType.text,
                  ),
                  SizedBox(height: height/20,),
                  Center(
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
