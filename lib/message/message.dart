import 'package:flutter/material.dart';
import 'package:myfacebook/models/message.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

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
              IconButton(
                icon:
                const Icon(Icons.menu, color: Colors.black, size: 30,), onPressed: () {
                  print('Menu pressed!');
              },
              ),
              const Text('Chats', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              IconButton(
                icon:
                const Icon(Icons.edit_note_rounded, color: Colors.black, size: 30,), onPressed: () {
                print('Menu pressed!');
              },
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2,),
          child: TextField(
            decoration: InputDecoration(prefixIcon: const Icon(Icons.search),
              hintText: "Search",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: const BorderSide(color: Colors.grey),
              ),),
            maxLines: 1,
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        Expanded(
            child: ListView.builder(
              itemCount: messagedata.length,
                itemBuilder: (context, i)=> Column(
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 8),
                    ),
                    ListTile(
                      title: Text(messagedata[i].name,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                      subtitle: Text(messagedata[i].subtitle,
                        style: const TextStyle(fontSize: 15, color: Colors.grey),),
                      leading: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(messagedata[i].avatarimage),
                      ),
                    ),
                   Divider(
                    thickness: 1,
                    color: Colors.grey.shade200,
                  )],
                ),
            ),
        ),
      ],
    );
  }
}
