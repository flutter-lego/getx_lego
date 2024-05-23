import 'package:flutter/material.dart';
import '../../../../../main.dart';
import 'widget_binding_lego/_.dart';
import 'getx_lego/_.dart';

Future<void> readyBeforeRunApp() async {
  if (_done) return;
  _done = true;
  await readyForWidgetBindingLego();
  await readyForGetxLego();

}

bool _done = false;
