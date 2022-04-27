import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "My  FIrst App",
    home: Firstpage(),
  ));
}
class Firstpage extends StatelessWidget {
  const Firstpage({Key? key}) : super(key: key);

  Firstpage createState() => Firstpage();

  @override
  Widget build(BuildContext context) {
    String dropdownvalue = 'Item 1';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
  //  var decoration;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title:Container(
          decoration: BoxDecoration(
            image:const DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1644760233595-8c2b77c07dcf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2818&q=80'),
                alignment: AlignmentDirectional(10,0)
            ),
            shape: BoxShape.circle,
          ),

          child:  Column(

            children: [
              SizedBox(
                height: 15,
              ),
              Text("Fliplearn Public School (FPS)",style: TextStyle(fontSize: 22.0)),

              Row(
                children: [
                  Container(
                    child: FlatButton(
                      child: Text("Learn",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Firstpage()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,


                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text("Noticeboard",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Notice()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                  Container(
                    child: FlatButton(
                      child: Text("Fliplearn Wall",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const wall()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),

                  Container(

                    child: DropdownButton(

                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   dropdownvalue = newValue!;
                          // });
                        },
                      ),
                  ), ],
              ),

            ],
          ),
        ),
toolbarHeight: 100,
        backgroundColor: Colors.deepPurple,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              Container(
                child: Card(
                  child: Column(
          children: [
                Image.asset('assets/im1.jpg'),],

                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/im2.jpg'),],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/im3.jpg'),],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/im4.jpg'),],
                  ),
                ),
              ),
            ],

          ),
        ),
      ),

      drawer: Drawer(


        child: ListView(
          children: [ 

            UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,

            ),
                accountName: Text("Satyam Singh"),
                accountEmail: Text("Satyams671@gmail.com"),

            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1644761661463-6c64de79028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),

            ),),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Fliplearn Public School(FPS)'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('xyz'),

            ),
            ListTile(
              leading: Icon(Icons.quiz),
              title: Text('Quiz Games'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore Content'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Contact Us'),
            )



          ],
        ),
      ),


    );

  }
}
class Notice extends StatelessWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Container(
          decoration: BoxDecoration(
            image:const DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1644760233595-8c2b77c07dcf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2818&q=80'),
                alignment: AlignmentDirectional(10,0)
            ),
            shape: BoxShape.circle,
          ),

          child:  Column(

            children: [
              SizedBox(
                height: 15,
              ),
              Text("Fliplearn Public School (FPS)",style: TextStyle(fontSize: 22.0)),

              Row(
                children: [
                  Container(
                    child: FlatButton(
                      child: Text("Learn",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Firstpage()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,


                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text("Noticeboard",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Notice()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                  Container(
                    child: FlatButton(
                      child: Text("Fliplearn Wall",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const wall()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                  Container(
                    child: FlatButton(
                      child: Text("Fliplearn",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const wall()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                ],
              ),

            ],
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.deepPurple,

      ),
      drawer: Drawer(


        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,

              ),
              accountName: Text("Satyam Singh"),
              accountEmail: Text("Satyams671@gmail.com"),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1644761661463-6c64de79028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),

              ),),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Fliplearn Public School(FPS)'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Attendence'),
            ),
            ListTile(
              leading: Icon(Icons.quiz),
              title: Text('Quiz Games'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore Content'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Contact Us'),
            )



          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              Container(
                child: Card(
                  child: Text("NOTICE 1",style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                child: Card(
                  child: Text("NOTICE 2",style: TextStyle(fontSize: 25),),
                ),
                ),

              Container(
                child: Card(
                  child: Text("NOTICE 3",style: TextStyle(fontSize: 25),),

                ),
                ),

              Container(
                child: Card(
                  child: Text("NOTICE 4",style: TextStyle(fontSize: 25),),
                ),
                ),

            ],

          ),
        ),
      ),
    );
  }
}
class wall extends StatelessWidget {
  const wall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title:Container(
          decoration: BoxDecoration(
            image:const DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1644760233595-8c2b77c07dcf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2818&q=80'),
                alignment: AlignmentDirectional(10,0)
            ),
            shape: BoxShape.circle,
          ),

          child:  Column(

            children: [
              SizedBox(
                height: 15,
              ),
              Text("Fliplearn Public School (FPS)",style: TextStyle(fontSize: 22.0)),

              Row(
                children: [
                  Container(
                    child: FlatButton(
                      child: Text("Learn",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Firstpage()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,


                    ),
                  ),
                  Container(
                    child: FlatButton(
                      child: Text("Noticeboard",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Notice()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                  Container(
                    child: FlatButton(
                      child: Text("Fliplearn Wall",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const wall()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                  Container(
                    child: FlatButton(
                      child: Text("Fliplearn",style: TextStyle(fontSize: 14),) ,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const wall()),);
                      },
                      minWidth: 5,
                      height: 50,
                      textColor: Colors.white,

                    ),),
                ],
              ),

            ],
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.deepPurple,

      ),
      drawer: Drawer(


        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,

              ),
              accountName: Text("Satyam Singh"),
              accountEmail: Text("Satyams671@gmail.com"),

              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1644761661463-6c64de79028a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8&auto=format&fit=crop&w=800&q=60'),

              ),),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Fliplearn Public School(FPS)'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Attendence'),
            ),
            ListTile(
              leading: Icon(Icons.quiz),
              title: Text('Quiz Games'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('My Orders'),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore Content'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.contact_support),
              title: Text('Contact Us'),
            )



          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[
              Container(
                child: Card(
                  child: Text("Wall 1",style: TextStyle(fontSize: 25),),
                ),
              ),
              Container(
                child: Card(
                  child: Text("Wall 2",style: TextStyle(fontSize: 25),),
                ),
              ),

              Container(
                child: Card(
                  child: Text("Wall 3",style: TextStyle(fontSize: 25),),

                ),
              ),

              Container(
                child: Card(
                  child: Text("Wall 4",style: TextStyle(fontSize: 25),),
                ),
              ),

            ],

          ),
        ),
      ),

    );
  }
}



