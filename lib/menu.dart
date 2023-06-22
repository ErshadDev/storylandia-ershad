import 'package:flutter/material.dart';

 // ignore: camel_case_types
 class drawerWidget extends StatelessWidget{
  const drawerWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    
    return Drawer(
      child: ListView(
        padding : const EdgeInsets.all(10),
        children : const [
          DrawerHeader(
            // ignore: sort_child_properties_last
            child: Center(
              child : Text(
                'کتاب کودک',
                style : TextStyle(
                  fontFamily: 'kidebook',
                  fontSize: 30,
                  color : Colors.white,
                ),
              ),
            ),
            decoration : BoxDecoration(
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading : Icon(Icons.circle,color: Colors.black,),
            title: Text('تم دارک'),
          ),
          ListTile(
            leading : Icon(Icons.circle,color: Colors.white,),
            title: Text('تم روشن'),
          ),
        ],
        ),
    );
  }


}