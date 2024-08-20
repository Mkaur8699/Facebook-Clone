import 'package:flutter/material.dart';
import 'package:myfacebook/models/notifications.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Notifications',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.black, size: 30,),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: notificationdata.length,
            itemBuilder: (context, i) => Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                ),
                ListTile(
                  title: Text(
                    notificationdata[i].title,
                    style: const TextStyle(
                        fontSize: 18),
                  ),
                  trailing: const Icon(Icons.more_horiz, color: Colors.black,),
                  subtitle: Text(
                    notificationdata[i].subtitle,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/rich_girl.jpg"),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
