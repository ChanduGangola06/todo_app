import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTodopage extends StatefulWidget {
  const AddTodopage({Key? key}) : super(key: key);

  @override
  State<AddTodopage> createState() => _AddTodopageState();
}

class _AddTodopageState extends State<AddTodopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff1d1e26),
            Color(0xff252041),
          ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.arrow_left),
                color: Colors.white,
                iconSize: 28,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create",
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "New Todo",
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    label("Task Title"),
                    const SizedBox(height: 12),
                    title(),
                    const SizedBox(
                      height: 30,
                    ),
                    label("Description"),
                    const SizedBox(height: 12),
                    description(),
                    const SizedBox(
                      height: 25,
                    ),
                    label("Category"),
                    const SizedBox(height: 12),
                    Wrap(
                      runSpacing: 10,
                      children: [
                        chipData("Food", 0xffff6d6e),
                        const SizedBox(width: 20),
                        chipData("Workout", 0xfff29732),
                        const SizedBox(width: 20),
                        chipData("Work", 0xff9557ff),
                        const SizedBox(width: 20),
                        chipData("Design", 0xff234ebd),
                      ],
                    ),
                    const SizedBox(height: 50),
                    button(),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget button() {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [
            Color(0xff8a32f1),
            Color(0xffad32f9),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          "Add Todo",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget description() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        maxLines: null,
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Task Title",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          contentPadding: EdgeInsets.only(left: 20, right: 20),
        ),
      ),
    );
  }

  Widget chipData(String label, int color) {
    return Chip(
      backgroundColor: Color(color),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      labelPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 3.8),
    );
  }

  Widget title() {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff2a2e3d),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 17,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Task Title",
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),
          contentPadding: EdgeInsets.only(left: 20, right: 20),
        ),
      ),
    );
  }

  Widget label(String label) {
    return Text(
      label,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 16.5,
        letterSpacing: 2,
      ),
    );
  }
}
