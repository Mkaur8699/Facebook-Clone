import 'package:flutter/material.dart';

class MenuCustomSizedButton extends StatelessWidget {
  const MenuCustomSizedButton({
    super.key,
    required this.icon,
    required this.text, required this.children,
  });

  final IconData icon;
  final String text;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(text), iconColor: Colors.black,
      leading: Icon(icon),
      backgroundColor: Colors.blueGrey.shade50,
      collapsedBackgroundColor: Colors.grey.shade100,
      expansionAnimationStyle: AnimationStyle(
        reverseCurve: const ElasticInOutCurve(),
        duration: const Duration(milliseconds: 500,)
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Colors.grey,
      ),
      children: children,
    );

    // return SizedBox(
    //   height: 40,
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(10),
    //     ),),
    //     onPressed: () {},
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Row(
    //           children: [
    //             Icon(icon, color: Colors.grey,),
    //             const SizedBox(
    //               width: 10,
    //             ),
    //             Text(
    //               text,
    //               style: const TextStyle(fontSize: 15, color: Colors.black),
    //             ),
    //           ],
    //         ),
    //         IconButton(
    //           onPressed: () {},
    //           icon: const Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey,),),
    //       ],
    //     ),
    //   ),
    // );
  }
}

