import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
 // final TextEditingController controller;
  const CustomForm({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
       
      ),
      child: TextFormField(
      //  controller: controller,
        
        decoration: InputDecoration(
             
            focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0
                  ),
                ),


          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.black12,
                    width: 1.0,
                  ),
          ),
          filled: true,
          
           

           fillColor: Color.fromARGB(255, 236, 243, 248)
        ),
        
          
      ),
    );
  }
}
