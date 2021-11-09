import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  var _value =1;

var nameController = TextEditingController();
  var adressController = TextEditingController();
  var emailadressController = TextEditingController();
  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();



  var name,adress,email,password;




  _handlesSignUpButtom(){

    if(formkey.currentState!.validate()) {


      formkey.currentState!.save();

      print("Name is: ${this.name}");
      print("Name is: ${this.adress}");
      print("Name is: ${this.email}");
      print("Name is: ${this.password}");

    }}





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            children: [

              Text("Registration Here",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold
              ,color: Colors.amber),),


              Form(
                  key: formkey,

                  child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(

                  children: [

                    TextFormField(

                      keyboardType: TextInputType.name,
                      controller: nameController,
                      decoration: InputDecoration(

                        labelText: 'Enter Your Name'

                      ),
                      validator: (value){

                        if(value!.isEmpty){

                          return ("Please Enter Your Name First Here");

                        }


                      },
                      onSaved: (v){

                        this.name = v;
                      },


                    ),
                    TextFormField(

                      keyboardType: TextInputType.name,
                      controller: nameController,

                      decoration: InputDecoration(

                          labelText: 'Enter Your Adress'

                      ),
                      validator: (value){

                        if(value!.isEmpty){

                          return ("Please Enter Your Adress First Here");

                        }


                      },
                      onSaved: (v){

                        this.adress = v;
                      },


                    ),
                    TextFormField(

                      keyboardType: TextInputType.emailAddress,
                       controller:  emailadressController,
                      decoration: InputDecoration(

                          labelText: 'Enter Your Email Adress'

                      ),
                      validator: (value){

                        if(value!.isEmpty){

                          return ("Please Enter Your Email Adress First Here");

                        }


                      },
                      onSaved: (v){

                        this.email = v;
                      },


                    ),
                    TextFormField(

                      obscureText: true,
                      controller: passwordController,

                      decoration: InputDecoration(

                          labelText: 'Enter Your Password'

                      ),
                      validator: (value){

                        if(value!.isEmpty){

                          return ("Please Enter Your Password First Here");

                        }


                      },
                      onSaved: (v){

                        this.password = v;
                      },


                    ),



                    Row(

                      children: [

                        Text("Gender"),

                      ],

                    ),
                    Row(
                      children: [

                        Radio(value: 1, groupValue: _value, onChanged: (valuex) {

                          setState(() {

                            valuex = _value;

                          });

                        }),

                        Text("Male"),

                      ],
                    ),
                    Row(
                      children: [

                        Radio(value: 2, groupValue: _value, onChanged: (valuex) {

                          setState(() {

                          });

                        }),

                        Text("Male"),

                      ],
                    ),



                    DropdownButtonFormField(

                      hint: Text("Enter Your Status"),

                        onChanged: (value) {

                        setState(() {
                          print("value");


                        });

                        },

                        items: [

                      DropdownMenuItem(child: Text("Married"),value: 'married',),
                      DropdownMenuItem(child: Text("Unmarried"),value: 'unmarried',),
                      DropdownMenuItem(child: Text("Devorced"),value: 'devorced',),

                    ]),
                    SizedBox(height: 50,
                    width: 50,),
                    RaisedButton(onPressed: _handlesSignUpButtom,
                        child: Text("Sign Up Here"),),


                  ],

                ),
              ))

            ],
          ),
        ),
      ),
    );
  }
}
