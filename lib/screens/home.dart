import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/widgets/todo_item.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: __buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
                child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top:50,bottom: 20),
                    child: Text('Todos os todos', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500),)
                  ),
                  ToDoItem()

              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget searchBox(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size:20
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: "Pesquisar...",
          hintStyle: TextStyle(color:tdGrey),
        ),
      ),
    );
  }

  AppBar __buildAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: tdBGColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,color: tdBlack,size: 30,),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpeg'),
            ),
          )
        ],),
    );
  }
}
