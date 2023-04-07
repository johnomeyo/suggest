import 'package:flutter/material.dart';
import 'package:suggest/my_widgets/alpha_widgets.dart';
import 'package:suggest/my_widgets/them.dart';

class CreateRecipe extends StatelessWidget {
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close, color: Colors.black)),
            title: Text(
              """
Create a new and delicious recipe""",
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                child: SaveButton(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TheOtherButtons(buttonName: "Publish"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: MyComment(),
              ),
            ],
            elevation: 0,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Image.asset(
                        "lib/assets/image.png",
                        height: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Add a recipe cover image")
                    ],
                  ),
                ),
              ),
              RecipeTextFields(title: "Title", hintText: "Recipe Title"),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add the recipe description...',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade300, fontSize: 15),
                        contentPadding: EdgeInsets.only(left: 20, top: 20)),
                    minLines: 6,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RecipeTextFields(title: "Cooktime", hintText: "1hr, 30mins etc"),
              SizedBox(
                height: 10,
              ),
              RecipeTextFields(title: "Serves", hintText: "3 people"),
              SizedBox(
                height: 10,
              ),
              RecipeTextFields(
                title: "Origin",
                hintText: "Location",
                icon: Icon(
                  Icons.location_pin,
                  size: 20,
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Divider(
                  color: Colors.grey.shade300,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Ingredients:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 300,
                    child: IngredientListTile(
                      ingredients: List.generate(
                          5, (index) => "Ingredients ${index + 1}"),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              RecipeButtons(name: "Add Ingredients:"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TheOtherButtons extends StatelessWidget {
  const TheOtherButtons({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //I'm coming for you
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Center(
              child: Text(
            buttonName,
            style: TextStyle(color: Colors.red, fontSize: 15),
          )),
        ),
      ),
    );
  }
}

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //I'm coming for you
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Center(
              child: Text(
            "Save",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400),
          )),
        ),
      ),
    );
  }
}
