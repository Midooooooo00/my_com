import 'package:flutter/material.dart';

void showMessege(BuildContext context, String Massege,
    {String? posactionname,
    VoidCallback? posaction,
    String? novactionname,
    VoidCallback? novaction,
    bool iscancelcor = true}) {
  List<Widget> actions = [];
  if (posactionname != null) {
    actions.add(TextButton(
        onPressed: () {
          Navigator.pop(context);
          if (posaction != null) {
            posaction();
          }
        },
        child: Text(
          posactionname,
          style: Theme.of(context).textTheme.bodyLarge,
        )));
  }
  if (novactionname != null) {
    actions.add(TextButton(
        onPressed: () {
          Navigator.pop(context);
          if (novaction != null) {
            novaction();
          }
        },
        child: Text(
          novactionname,
          style: Theme.of(context).textTheme.bodyLarge,
        )));
  }
  showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          content: Text(
            Massege,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: actions,
        );
      },
      barrierDismissible: iscancelcor);
}

void showloding(BuildContext context, String loadingmass,
    {bool iscancelcor = true}) {
  showDialog(
      context: context,
      builder: (BuildContext) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              Text(
                loadingmass,
                style: Theme.of(context).textTheme.bodyLarge,
              )
            ],
          ),
        );
      },
      barrierDismissible: iscancelcor);
}

void hideloading(BuildContext context) {
  Navigator.pop(context);
}
