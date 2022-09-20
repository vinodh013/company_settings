import 'package:company_settings/constants/colors.dart';
import 'package:flutter/material.dart';

class DeleteProject extends StatelessWidget {
  const DeleteProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(blurRadius: 6.0,
        color: Color.fromARGB(88, 0, 0, 0)        ),
        
      ],
      borderRadius: BorderRadius.circular(20),
       color: Colors.white,
    ),
      padding: EdgeInsets.all(20),
      height: 200,
      width: 220,
     
      child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Icon(Icons.delete_outline, ),
           SizedBox(height: 15,),
           
           CustomText(text: "Delete project", weight: FontWeight.w500, size: 14),
           SizedBox(height: 15,),
           CustomText(
            color: Colors.grey,
            text: "This action can't be undone", weight: FontWeight.w500, size: 12),
            SizedBox(height: 15,),
          Row(
            mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                 Container(
                     height: 45,
                     width: 80,
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
                width: 80,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Delete', style: TextStyle(
                    color: Colors.white, fontSize: 12
                  ),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
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
