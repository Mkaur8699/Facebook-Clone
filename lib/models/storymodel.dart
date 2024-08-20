import 'package:flutter/material.dart';

class StoryModel {
  final String name;
  final String image;
  final VoidCallback onTap;

  StoryModel({
    required this.name,
    required this.image,
    required this.onTap,
  });
}

List<StoryModel> storyList = [
  StoryModel(
      name: "Mandeep",
      image: 'assets/images/rich_girl.jpg',
      onTap: (){

      },),
  StoryModel(
    name: "Ekam",
    image: 'assets/images/download (1).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Hargun",
    image: 'assets/images/download (2).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Simran",
    image: 'assets/images/download (3).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Manpreet",
    image: 'assets/images/download (4).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Baljinder",
    image: 'assets/images/download (5).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Raman",
    image: 'assets/images/download (6).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Diya",
    image: 'assets/images/download (7).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Jasmine",
    image: 'assets/images/download (8).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Gagan",
    image: 'assets/images/download (9).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Jasleen",
    image: 'assets/images/download (10).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Samreen",
    image: 'assets/images/download (11).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Neha",
    image: 'assets/images/download (12).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Richa",
    image: 'assets/images/download (1).jpg',
    onTap: (){

    },),
  StoryModel(
    name: "Gurpreet",
    image: 'assets/images/download (2).jpg',
    onTap: (){

    },),
];