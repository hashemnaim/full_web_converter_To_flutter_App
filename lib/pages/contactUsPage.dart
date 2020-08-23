import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:full_web_converter/utilites/toolsUtilities.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  //The controls of Text Editing
  TextEditingController nameTextControl = TextEditingController();
  TextEditingController phoneTextControl= TextEditingController();
  TextEditingController messageTitleTextControl= TextEditingController();
  TextEditingController contentTextControl= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ToolsUtilities.whiteColor,
      appBar: AppBar(
        title: Text('Contact Us '),
        backgroundColor: ToolsUtilities.mainColor,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: _contactUSCard(),
      ),
    );
  }

  Widget customTextField(String hitName,TextEditingController textEditingControl,int maxLine){
    return Padding(
      padding: const EdgeInsets.only(right:30,left: 30,top: 8),
      child: Container(
          child: TextField(
            maxLines: maxLine,
            controller:textEditingControl,
            decoration: InputDecoration(
              hoverColor: ToolsUtilities.secondColor,
              focusColor: ToolsUtilities.secondColor,
              focusedBorder:OutlineInputBorder(
                borderSide: BorderSide(
                    color: ToolsUtilities.mainColor
                ),

              ),
              labelText: hitName,labelStyle: TextStyle(color: ToolsUtilities.secondColor),
            ),
          )),
    );
  }

  Widget _contactUSCard(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(ToolsUtilities.contactUsHeaderImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(0),
          ),
        ),


        //name Of our Company or Brand
        Padding(
          padding: const EdgeInsets.only(left:8.0,top:10),
          child: Text('Contact Us ',style: TextStyle(color:ToolsUtilities.mainColor,fontSize: 20,fontWeight: FontWeight.bold),textAlign:TextAlign.start,),
        ),
        customTextField('Enter Your Name',nameTextControl,1),
        customTextField('Enter Your Phone Number',phoneTextControl,1),
        customTextField('Enter Your Message Title',messageTitleTextControl,1),
        customTextField('Enter Your Message Content',contentTextControl,4),

        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            alignment: Alignment.bottomRight,
            width: MediaQuery.of(context).size.width * 0.65,
            child: RaisedButton(onPressed: (){},
              color: ToolsUtilities.mainColor,
              elevation: 5,
              child: FlatButton.icon(onPressed: (){


              }, icon: Icon(Icons.email,color: ToolsUtilities.whiteColor,), label: Text('Send Via Email',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: ToolsUtilities.whiteColor),)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),


            ),
          ),
        ),


      ],
    );
  }


}