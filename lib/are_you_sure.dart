import 'package:flutter/material.dart';

import 'constants/colors.dart';


class AreYouSure extends StatelessWidget {
  const AreYouSure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      boxShadow: const [
         BoxShadow(blurRadius: 6.0,
        color: Color.fromARGB(88, 0, 0, 0)),
      ],
      borderRadius: BorderRadius.circular(20),
       color: Colors.black,
    ),
      padding: EdgeInsets.all(20),
      height: 250,
      width: 250,
     
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Icon(Icons.wallet, color: Colors.white, size: 30, ),
           SizedBox(height: 15,),
           CustomText(
            color: Colors.white,
            text: "Delete project", weight: FontWeight.w500, size: 14),
           SizedBox(height: 15,),
           CustomText(
            color: Colors.grey,
            text: "You are going to archive some of the projects that contain late invoices please confirm.", weight: FontWeight.w500, size: 12),
            SizedBox(height: 15,),
          Row(
            mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 Container(
                     height: 45,
                     width: 95,
                     child: ElevatedButton(
                       onPressed: () {},
                       child: Text('cancel' , style: TextStyle(
                        color: Color.fromARGB(255, 145, 145, 145), fontSize: 12
                       ),),
                       style: ElevatedButton.styleFrom(
                         backgroundColor: Color.fromARGB(80, 250, 250, 250),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(12), // <-- Radius
                         ),
                       ),
                     )),
           Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Container(
                height: 45,
                width: 95,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Archive', style: TextStyle(
                    color: Colors.white, fontSize: 12
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                )),
          ),
            ],
          )
         ],

      ),
    );
  }
}