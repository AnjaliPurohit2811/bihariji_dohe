
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settingsscreen/settings_screen.dart';
import '../themescreen/json_provider.dart';
import '../themescreen/language_provider.dart';

class DetailScreen extends StatelessWidget {
  final int index;

  const DetailScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {

    final languageProvider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
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
      body: Center(
        child: Consumer<JsonDataProvider>(
          builder: (context, providerF, _) {
            if (providerF.data.isEmpty || index >= providerF.data.length) {
              return const Text('Data not available');
            }

            final data = providerF.data[index];

            String? translation;
            switch (languageProvider.selectedLanguage) {
              case 'eng':
                translation = data.eng;
                break;
              case 'guj':
                translation = data.guj;
                break;
              case 'hindi':
              default:
                translation = data.hindi;
                break;
            }

            final shareContent = 'दोहा: ${data.hindi}\n\nअर्थ: $translation';

            return Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('asset/img/background.png'),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 120,left: 35,right: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'दोहा:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data.hindi.toString(),
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'अर्थ:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                     translation,
                      overflow: TextOverflow.fade,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),

                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
