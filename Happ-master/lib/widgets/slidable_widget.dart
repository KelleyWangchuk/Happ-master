import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableWidget<T> extends StatelessWidget {
  final Widget child;

  const SlidableWidget({
    @required this.child,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: SlidableDrawerActionPane(),
        child: child,
        secondaryActions: <Widget>[
          IconSlideAction(
            caption: "Archive",
            color: Colors.blue,
            icon: Icons.archive,
            onTap: () {},
          ),
        ],
      );
}
