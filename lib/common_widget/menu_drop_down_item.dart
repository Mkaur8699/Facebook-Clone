import 'package:flutter/material.dart';

class MenuDropDownItem extends StatelessWidget {
  const MenuDropDownItem({
    super.key, required this.icon, required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1),
            ),
            elevation: 5,
          ),
          onPressed: () {},
          child: Row(
            children: [
              Icon(icon,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
              ),
            ],
          )),
    );
  }
}
