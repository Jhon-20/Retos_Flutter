import 'package:app_reto_03/app/ui/components/parrafos.dart';
import 'package:app_reto_03/app/ui/views/menu/widget/header.dart';
import 'package:flutter/material.dart';

import 'draggable_widget.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Header(),
        Parrafos(text: "text"),
        DraggableWidget(),
      ],
    );
  }
}
