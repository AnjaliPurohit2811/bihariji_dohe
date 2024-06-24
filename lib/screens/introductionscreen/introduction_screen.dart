import 'package:flutter/material.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(
          'Bihari ke Dohe',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.star_border,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, ),
            child: CircleAvatar(
              backgroundImage: AssetImage('asset/img/logo.png'),
              radius: 90,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'Introduction ',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20 , left: 15),
              child: Text(
                  "Bihari Lal Chaube or Bihārī (1595–1663) was a Hindi poet,\n who is famous for writing the Satasaī (Seven Hundred\n Verses) in Brajbhasha, a collection of approximately\n seven hundred distichs, which is perhaps the most\n celebrated Hindi work of poetic art, as distinguished from narrative and simpler styles. Today it is considered the\n most well known book of the Ritikavya Kaal or 'Riti Kaal'\n(an era in which poets wrote poems for kings) of Hindi literature.The language is the form of Hindi called\n Brajbhasha, spoken in the country about Mathura, where\n the poet lived. The couplets are inspired by the Krishna\n side of Vishnu-worship, and the majority of them take \nthe shape of amorous utterances of Radha, the chief of \nthe Gopis or cowherd maidens of Braj, and her divine lover,\n the son of Vasudeva. Each couplet is independent and complete in itself. The distichs, in their collected form, are arranged, not in any sequence of narrative or dialogue, but according to the technical classification of the sentiments which they convey as set forth in the treatises on Indian rhetoric."),
            ),
          )
        ],
      ),
    );
  }
}
