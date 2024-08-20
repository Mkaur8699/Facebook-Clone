import 'package:flutter/material.dart';

class MenuCustomSizeElevatedButton extends StatelessWidget {
  const MenuCustomSizeElevatedButton({
    super.key, required this.firstIcon, required this.firstText, required this.secondIcon,
    required this.secondText, required this.firstIconColor, required this.secondIconColor, required this.onPressed1, required this.onPressed2,
  });

  final IconData firstIcon;
  final String firstText;
  final IconData secondIcon;
  final String secondText;
  final Color firstIconColor;
  final Color secondIconColor;
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/2-15,
            height: 80,
            child: ElevatedButton(onPressed: onPressed1,
              
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )), child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(firstIcon, color: firstIconColor,),
                    Text(firstText, style: const TextStyle(fontSize: 12, color: Colors.black),)
                  ],
                ),
              ),

            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/2-15,
            height: 80,
            child: ElevatedButton(onPressed: onPressed2,
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )), child: Align(alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(secondIcon, color: secondIconColor,),
                    Text(secondText, style: const TextStyle(fontSize: 12, color: Colors.black),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
