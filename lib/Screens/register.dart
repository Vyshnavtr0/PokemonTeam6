import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          "Register",
          style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Stack(
              children: [
                ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    
                    
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Name',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'FiraSans-Regular', fontSize: 14),
                            ),
                          ),
                          TextField(
                            //  controller: _bedroomController,
                            keyboardType: TextInputType.name,
                            autofillHints: const [AutofillHints.name],
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              labelStyle: const TextStyle(
                                  fontFamily: 'FiraSans-Light', fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Email',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'FiraSans-Regular', fontSize: 14),
                            ),
                          ),
                          TextField(
                            //  controller: _bedroomController,
                            keyboardType: TextInputType.name,
                            autofillHints: const [AutofillHints.name],
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              labelStyle: const TextStyle(
                                  fontFamily: 'FiraSans-Light', fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Age',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'FiraSans-Regular', fontSize: 14),
                            ),
                          ),
                          TextField(
                            //  controller: _bedroomController,
                            keyboardType: TextInputType.number,
                            autofillHints: const [AutofillHints.name],
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              labelStyle: const TextStyle(
                                  fontFamily: 'FiraSans-Light', fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                   
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Address',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'FiraSans-Regular', fontSize: 14),
                            ),
                          ),
                          TextField(
                            //  controller: _bedroomController,
                            keyboardType: TextInputType.name,
                            autofillHints: const [AutofillHints.name],
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              labelText: '',
                              labelStyle: const TextStyle(
                                  fontFamily: 'FiraSans-Light', fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.11,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              'Additional Details, if any',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'FiraSans-Regular', fontSize: 14),
                            ),
                          ),
                          TextField(
                            //  controller: _bedroomController,
                            keyboardType: TextInputType.name,
                            maxLines: 5,
                            autofillHints: const [AutofillHints.name],
                            onChanged: (value) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter here',
                              hintStyle: const TextStyle(
                                  fontFamily: 'FiraSans-Light', fontSize: 14),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 255,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 1.13,
                        child: ElevatedButton(
                          onPressed: () {
                            
                             Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.black, // Set the text color to white
                            padding: const EdgeInsets.all(
                                16.0), // Set padding for the button
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Set the border radius
                            ),
                          ),
                          child: const Text(
                            'SUBMIT',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          ),
    );
  }
}