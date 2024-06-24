
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/themescreen/language_provider.dart';
import '../screens/themescreen/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerFalse = Provider.of<LanguageProvider>(context, listen: false);
    return Scaffold(
      appBar : AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(
          'Bihari ke Dohe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
          }, icon: Icon(Icons.star_border))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            ListTile(
              leading: const Icon(Icons.language,size: 20,),
              title: const Text('Language',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              trailing: PopupMenuButton(
                icon: const Icon(Icons.translate),
                onSelected: (value) {
                  providerFalse.updateSelectedLanguage(value);
                },
                itemBuilder: (context) => [
                  const PopupMenuItem<String>(
                    value: 'hindi',
                    child: Text('Hindi'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'eng',
                    child: Text('English'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'guj',
                    child: Text('Gujarati'),
                  ),
                ],
              ),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.ios_share,size: 20,),
              title: Text('Share App',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.privacy_tip_rounded,size: 20,),
              title: Text('Privacy and Security',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.star,size: 20,),
              title: Text('Rate us',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),


          ],
        ),
      ),
    );
  }
}