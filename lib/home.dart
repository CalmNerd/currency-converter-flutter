import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    final focusedBorder = OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          );
    final enabledBorder =  OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 155, 200, 236),
              style: BorderStyle.solid,
            ),
          );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            'Currency Converter',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
                MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                MediaQuery.of(context).padding.top,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue[100]!),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue[100]!,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Enter the amount',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.attach_money),
                        prefixIconColor: Colors.blue,
                        prefixIconConstraints: BoxConstraints(minWidth: 40),
                        focusedBorder: focusedBorder,
                        enabledBorder: enabledBorder,
                        // errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        // focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        // disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        // errorText: 'Amount is required',
                        // errorStyle: TextStyle(color: Colors.red),
                        // errorMaxLines: 2,
                        labelText: 'Amount',
                        labelStyle: TextStyle(color: Colors.blue),

                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      'Choose the currency',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // label: Text(
                        //   'Currency',
                        //   style: TextStyle(color: Colors.blue),
                        // ),

                        // or
                        // labelText: 'Currency',
                        // or
                        hintText: 'Select an option',
                        hintStyle: TextStyle(color: Colors.blue),

                        // labelStyle: TextStyle(color: Colors.blue),
                        focusedBorder: focusedBorder,
                        enabledBorder:enabledBorder,
                      ),
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Result',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      if (kDebugMode) {
                        print('Convert button pressed');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Convert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// takeaway:
// 1. Container is used to wrap a widget and add a margin or padding or decoration or another widget.

// 2. Column is used to display a list of widgets in a column in its children property.

// 3. Row is used to display a list of widgets in a row in its children property.

// 4. "decoration" and "style" both relate to the visual appearance of widgets, but they address different aspects.
//     Key Differences Summarized:
//     -Scope: Decoration handles the outer visual container and background of a widget, while Style handles the inner content's appearance.
//     -Application: Decoration is typically used with widgets like Container or DecoratedBox, while Style is used with widgets like Text or various button widgets.
//     -Purpose: Decoration shapes and adorns the widget itself, while Style dictates how the widget's content (like text) looks.

// 5. Labels are used to display text in a TextField. there are different syntax for it:
//     - label: Text('Currency', style: TextStyle(color: Colors.blue)),  (as a widget)
//     or
//     - labelText: 'Currency',
//     - labelStyle: TextStyle(color: Colors.blue),

//     - hintText: 'Select an option',
//     - hintStyle: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),

//      Hint text is as a placeholder for the input so if the user doesn't enter anything, the hint text will be displayed otherwise it will be replaced by the input text.
//      While label first displayed as placeholder but on clicking the input field it becomes the label text.

// 6. We can store a widget in a variable to initialize it once and reuse it wherever needed. example see abover border initialization.
// 7. in the build function try to keep only variables and widget tree and avoid to have any expensive calculations or operations.

        

