import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:popup/newPage.dart';

class PopUp extends StatefulWidget {
  const PopUp({super.key});

  @override
  State<PopUp> createState() => _PopUpState();
}

class _PopUpState extends State<PopUp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
                color: HexColor('#FFC300'),
                borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
              child: const Text(
                'SnackBar',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                snackbar(context);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
                color: HexColor('#FFC300'),
                borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
              child: const Text(
                'Alert',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                alert(context);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
                color: HexColor('#FFC300'),
                borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
              child: const Text(
                'simpleDialog',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                dialog(context);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 15,
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(
                color: HexColor('#FFC300'),
                borderRadius: BorderRadius.circular(8)),
            child: ElevatedButton(
              child: const Text(
                'Nouvelle Page',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              onPressed: () {
                page(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}

void snackbar(context) {
  SnackBar snackbar = SnackBar(
    content: const Text(
      'j \' suis un snackbar',
      textScaleFactor: 1.5,
    ),
    duration: const Duration(seconds: 2),
    action: SnackBarAction(
        label: 'Fermer',
        onPressed: () {
          Navigator.pop(context);
        }),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

Future<void> alert(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: const Text('il y\'a un problème de connexion à Lomé'),
          contentPadding: const EdgeInsets.all(15.0),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.red,
              ),
            ),
          ],
        );
      });
}

Future<void> dialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text(
            'dialog',
            textScaleFactor: 1.0,
          ),
          contentPadding: const EdgeInsets.all(15.0),
          children: [
            const Text(
              'c\'est juste un simple dialog ce n\' est rien de plus',
              textScaleFactor: 1.3,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'ok',
                  textScaleFactor: 1.5,
                ),
              ),
            )
          ],
        );
      });
}

void page(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: ((context) {
    return const newPage();
  })));
}
