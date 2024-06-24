import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../settingsscreen/settings_screen.dart';
import '../../utils/model_class.dart';
import '../detailscreen/detail_screen.dart';
import '../themescreen/json_provider.dart';

class DoheScreen extends StatefulWidget {
  const DoheScreen({super.key});

  @override
  State<DoheScreen> createState() => _DoheScreenState();
}

class _DoheScreenState extends State<DoheScreen> {
  @override
  Widget build(BuildContext context) {
    JsonDataProvider providerT = Provider.of<JsonDataProvider>(context, listen: true);
    JsonDataProvider providerF = Provider.of<JsonDataProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
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
      body: FutureBuilder<String>(
        future: rootBundle.loadString('asset/json/json_data.json'),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            List<dynamic> data = jsonDecode(snapshot.data!);
            providerF.convertData(data);
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: providerT.data.length,
                  itemBuilder: (context, index) {
                    DoheModel item = providerT.data[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(index: index), // Pass the index you want to display
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('asset/img/detail.jpg'),
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 40,left: 90),
                              child: Text(item.hindi.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );

  }
}
