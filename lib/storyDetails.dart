import 'package:flutter/material.dart';

// ignore: camel_case_types
class storyDetails {

  final String? image , story , title ;
  final int id;
  final Color color;


  storyDetails({
    required this.id, 
    required this.image,
    required this.story,
    required this.color,
    required this.title,
  });


}

  List<storyDetails> storyD = [
    storyDetails(
      id: 0,
      image: 'leon', 
      story: 'داستان کامل ...', 
      color: Colors.orange.shade300, 
      title: 'ساطان جنگل شیر'
    ),
    storyDetails(
      id: 1,
      image: 'leon', 
      story: 'داستان کامل ...', 
      color: Colors.red.shade300, 
      title: 'ساطان جنگل شیر'
    ),
    storyDetails(
      id: 2,
      image: 'leon', 
      story: 'داستان کامل ...', 
      color: Colors.green.shade300, 
      title: 'ساطان جنگل شیر'
    ),
    storyDetails(
      id: 3,
      image: 'leon', 
      story: 'داستان کامل ...', 
      color: Colors.grey.shade300, 
      title: 'ساطان جنگل شیر'
    ),
    storyDetails(
      id: 4,
      image: 'leon', 
      story: 'داستان کامل ...', 
      color: Colors.blue.shade300, 
      title: 'ساطان جنگل شیر'
    ),
  ];

