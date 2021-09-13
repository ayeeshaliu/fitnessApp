


import 'package:flutter/material.dart';

Future selectDate(context) async {
  DateTime today = DateTime.now();
  DateTime selectedDate = await showDatePicker(
      context: context,
      initialDate: today,
      firstDate: DateTime(2018),
      lastDate: DateTime.now().add(Duration(hours: 1)),

      selectableDayPredicate: (DateTime d) {
        if (d.isBefore(DateTime.now().add(Duration(hours: 12)))) {
          return true;
        }
        return false;
      });

  return selectedDate;
  // DateFormat dateFormat = DateFormat("dd/MM/yyyy");
  //
  // if (selectedDate != null) {
  //   setState(() {
  //     _startDate = dateFormat.format(selectedDate);
  //     _starteDateController.text   = _startDate;
  //     // _startdatePicked = true;
  //   });
  // }
}

