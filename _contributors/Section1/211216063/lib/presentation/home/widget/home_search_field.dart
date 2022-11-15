import 'package:flutter/material.dart';

Padding homeSearchField() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextFormField(
      autofocus: false,
      style: TextStyle(fontSize: 15.0, color: Colors.black),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        suffixIcon: IconButton(
          onPressed: () => print('tıklanıldı'),
          icon: Icon(
            Icons.search,
            color: Color.fromARGB(255, 43, 4, 82),
          ),
        ),
        hintText: 'Ara...',
        filled: true,
        fillColor: Color.fromARGB(255, 163, 118, 177),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 83, 48, 79)),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 87, 75, 105)),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  );
}
