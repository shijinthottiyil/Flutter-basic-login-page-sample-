
import 'package:flutter/material.dart';
import 'package:sample_project/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text('Welcome,Shijin',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
            actions: [
              IconButton(onPressed: (){
                signout(context);
              }, icon: Icon(Icons.exit_to_app)),
            ],
          ),
          body: ListView(
           children: [
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/gokul.jpg'),
                
              ),
              title: Text('Gokul'),
              subtitle: Text('+91 9400183831'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/athul.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Athul'),
              subtitle: Text('+91 9061428842'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/ameen.jpg'),
                
              ),
              title: Text('Ameen'),
              subtitle: Text('+91 8157052217'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/munshi.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Munshi'),
              subtitle: Text('+91 9072065394'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/ajnas.jpg'),
                
              ),
              title: Text('Ajnas'),
              subtitle: Text('+91  96337 52203'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/rishad.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Rishad'),
              subtitle: Text('+91 70345 27959'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
              
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/banna.jpg'),
                
              ),
              title: Text('Banna'),
              subtitle: Text('+91 70347 25940'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/adwaith.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Adwaith'),
              subtitle: Text('+91 79947 34828'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/sreya.jpg'),
                
              ),
              title: Text('Sreya'),
              subtitle: Text('+91 90480 76769'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
              
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/muhammed.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Muhammed'),
              subtitle: Text('+91 75609 67629'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/krishna.jpg'),
                
              ),
              title: Text('Krishna'),
              subtitle: Text('+91 77360 99539'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
              
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/sankeerth.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Sankeerth'),
              subtitle: Text('+91 75590 05225'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
            ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/hani.jpg'),
                
              ),
              title: Text('Hani'),
              subtitle: Text('+91 80781 06066'),
              trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
              
            ),
            ListTile(
              leading:ConstrainedBox(constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset('assets/images/sruthin.jpg',fit: BoxFit.cover,),
              ),
              title: Text('Sruthin'),
              subtitle: Text('+91 82819 36142'),
             trailing: IconButton(onPressed: (){}, icon:Icon(Icons.call)),
            ),
           ],
          )
        );
      }
    );
  }
  signout(BuildContext ctx)async{
    final _sharedPrefs=await SharedPreferences.getInstance();
     await _sharedPrefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(MaterialPageRoute(builder: (ctx1)=>ScreenLogin()), (route) => false);

  }
}