// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: NewConnectionPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class NewConnectionPage extends StatelessWidget {
//   const NewConnectionPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//
//           return Scaffold(
//             appBar: AppBar(
//               title: Text("New Connection Form"),
//               backgroundColor: Colors.blueGrey,
//             ),
//             body: SingleChildScrollView(
//               padding: EdgeInsets.all(16),
//               child: Container(
//                 padding: EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   border: Border.all(color: Colors.grey.shade300),
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.shade200,
//                       blurRadius: 8,
//                       offset: Offset(0, 4),
//                     )
//                   ],
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Property Type: New Connection", style: TextStyle(fontWeight: FontWeight.bold)),
//                     SizedBox(height: 8),
//                     Text("Service Type: Permanent", style: TextStyle(fontWeight: FontWeight.bold)),
//                     Divider(height: 30),
//
//                     Text("Customer Details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     SizedBox(height: 16),
//
//                     Text("National ID", style: TextStyle(color: Colors.grey)),
//                     Text("1221344", style: TextStyle(color: Colors.blue)),
//
//                     SizedBox(height: 16),
//                     Text("Customer Name *"),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Enter Customer Name',
//                         border: OutlineInputBorder(),
//                       ),
//                       controller: TextEditingController(text: "Mohammed Aslam"),
//                     ),
//
//                     SizedBox(height: 16),
//                     Text("Customer Name Arabic *"),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Customer Name Arabic',
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//
//                     SizedBox(height: 16),
//                     Text("GSM Number", style: TextStyle(color: Colors.grey)),
//                     Text("+96 706899", style: TextStyle(color: Colors.blue)),
//
//                     SizedBox(height: 16),
//                     Text("Email ID", style: TextStyle(color: Colors.grey)),
//                     Text("sample-email@email.com", style: TextStyle(color: Colors.blue)),
//
//                     SizedBox(height: 16),
//                     Text("Alternate Contact Number"),
//                     TextField(
//                       decoration: InputDecoration(
//                         hintText: 'Alternate Contact Number',
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(content: Text('Form Submitted!')),
//                         );
//                       },
//                       child: Text('Submit'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             backgroundColor: Colors.grey.shade100,
//           );
//
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:newconnection/responsive_row_column.dart';
//
// void main() {
//   runApp(
//     MaterialApp(home: NewConnectionPage(), debugShowCheckedModeBanner: false),
//   );
// }
//
// class NewConnectionPage extends StatelessWidget {
//   const NewConnectionPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final isMobile = constraints.maxWidth < 600;
//
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("New Connection Form"),
//             backgroundColor: Colors.blueGrey,
//           ),
//           body: SingleChildScrollView(
//             padding: EdgeInsets.all(16),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey.shade300),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade200,
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: ResponsiveRowColumn(
//                 layout: ResponsiveRowColumnType.COLUMN,
//                 spacing: 32,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Property Type & Service Type
//                   ResponsiveRowColumnItem(
//                     order: 1,
//                     child: ResponsiveRowColumn(
//                       layout: isMobile
//                           ? ResponsiveRowColumnType.COLUMN
//                           : ResponsiveRowColumnType.ROW,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       spacing: 16,
//                       children: [
//                         ResponsiveRowColumnItem(
//                           child: Text("Property Type: New Connection",
//                               style: TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                         ResponsiveRowColumnItem(
//                           child: Text("Service Type: Permanent",
//                               style: TextStyle(fontWeight: FontWeight.bold)),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   ResponsiveRowColumnItem(
//                     order: 2,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Divider(height: 10),
//                         Text("Customer Details",
//                             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                         Divider(height: 10),
//                         SizedBox(height: 16),
//                         Text("National ID", style: TextStyle(color: Colors.grey)),
//                         Text("1221344", style: TextStyle(color: Colors.blue)),
//                         SizedBox(height: 16),
//
//                         // Customer Name & Arabic Name
//                         ResponsiveRowColumn(
//                           layout: isMobile
//                               ? ResponsiveRowColumnType.COLUMN
//                               : ResponsiveRowColumnType.ROW,
//                           spacing: 16,
//                           children: [
//                             ResponsiveRowColumnItem(
//                               order: 1,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Customer Name *"),
//                                   TextField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Enter Customer Name',
//                                       border: OutlineInputBorder(),
//                                     ),
//                                     controller:
//                                     TextEditingController(text: "Mohammed Aslam"),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             ResponsiveRowColumnItem(
//                               order: 1,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Customer Name Arabic *"),
//                                   TextField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Customer Name Arabic',
//                                       border: OutlineInputBorder(),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//
//                   ResponsiveRowColumnItem(
//                     order: 3,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // GSM Number & Email ID
//                         ResponsiveRowColumn(
//                           layout: isMobile
//                               ? ResponsiveRowColumnType.COLUMN
//                               : ResponsiveRowColumnType.ROW,
//                           spacing: 16,
//                           children: [
//                             ResponsiveRowColumnItem(
//                               order: 1,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("GSM Number", style: TextStyle(color: Colors.grey)),
//                                   Text("+96 706899", style: TextStyle(color: Colors.blue)),
//                                 ],
//                               ),
//                             ),
//                             ResponsiveRowColumnItem(
//                               order: 1,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Email ID", style: TextStyle(color: Colors.grey)),
//                                   Text("sample-email@email.com",
//                                       style: TextStyle(color: Colors.blue)),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//
//                         SizedBox(height: 16),
//
//                         // Alternate Number
//                         ResponsiveRowColumn(
//                           layout: isMobile
//                               ? ResponsiveRowColumnType.COLUMN
//                               : ResponsiveRowColumnType.ROW,
//                           spacing: 16,
//                           children: [
//                             ResponsiveRowColumnItem(
//                               order: 1,
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Alternate Contact Number"),
//                                   TextField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Alternate Contact Number',
//                                       border: OutlineInputBorder(),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             if (!isMobile)
//                               ResponsiveRowColumnItem(
//                                 order: 1,
//                                 child: Container(),
//                               ),
//                           ],
//                         ),
//
//                         SizedBox(height: 24),
//                         ElevatedButton(
//                           onPressed: () {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               SnackBar(content: Text('Form Submitted!')),
//                             );
//                           },
//                           child: Text('Submit'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           backgroundColor: Colors.grey.shade100,
//         );
//       },
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:newconnection/responsive_row_column.dart';
//
// void main() {
//   runApp(
//     MaterialApp(home: NewConnectionPage(), debugShowCheckedModeBanner: false),
//   );
// }
//
// class NewConnectionPage extends StatelessWidget {
//   const NewConnectionPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final isMobile = constraints.maxWidth < 600;
//
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("New Connection Form"),
//             backgroundColor: Colors.blueGrey,
//           ),
//           body: SingleChildScrollView(
//             padding: EdgeInsets.all(16),
//             child: Container(
//               padding: EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey.shade300),
//                 borderRadius: BorderRadius.circular(16),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.shade200,
//                     blurRadius: 8,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ResponsiveRowColumn(
//                     layout: isMobile
//                         ? ResponsiveRowColumnType.COLUMN
//                         : ResponsiveRowColumnType.ROW,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     spacing: 10,
//                     children: [
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Property Type",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "New Connection",
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 1),
//                       // Service Type container
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Service Type",
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               "Permanent",
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//
//                   Divider(height: 32),
//
//                   // Customer Details Heading
//                   Text(
//                     "Customer Details",
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(height: 10),
//                   Divider(height: 15),
//
//                   // National ID
//                   Text("National ID", style: TextStyle(color: Colors.grey)),
//                   Text("1221344", style: TextStyle(color: Colors.blue)),
//                   SizedBox(height: 16),
//
//                   // Name Inputs
//                   ResponsiveRowColumn(
//                     layout:
//                         isMobile
//                             ? ResponsiveRowColumnType.COLUMN
//                             : ResponsiveRowColumnType.ROW,
//                     spacing: 10,
//                     children: [
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Customer Name *"),
//                             TextField(
//                               decoration: InputDecoration(
//                                 hintText: 'Enter Customer Name',
//                                 border: OutlineInputBorder(),
//                               ),
//                               controller: TextEditingController(
//                                 text: "Mohammed Aslam",
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 1),
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Customer Name Arabic *"),
//                             TextField(
//                               decoration: InputDecoration(
//                                 hintText: 'Customer Name Arabic',
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 24),
//
//                   // GSM and Email
//                   ResponsiveRowColumn(
//                     layout:
//                         isMobile
//                             ? ResponsiveRowColumnType.COLUMN
//                             : ResponsiveRowColumnType.ROW,
//                     spacing: 10,
//                     children: [
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "GSM Number",
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                             Text(
//                               "+96 706899",
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ),
//                       if (!isMobile) SizedBox(width: 1),
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Email ID",
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                             Text(
//                               "sample-email@email.com",
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 24),
//
//                   ResponsiveRowColumn(
//                     layout:
//                         isMobile
//                             ? ResponsiveRowColumnType.COLUMN
//                             : ResponsiveRowColumnType.ROW,
//                     spacing: 10,
//                     children: [
//                       Container(
//                         width: isMobile ? double.infinity : 250,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("Alternate Contact Number"),
//                             TextField(
//                               decoration: InputDecoration(
//                                 hintText: 'Alternate Contact Number',
//                                 border: OutlineInputBorder(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       if (!isMobile) SizedBox(height: 16),
//                       SizedBox(width: 250), // fixed Expanded issue
//                     ],
//                   ),
//                   SizedBox(height: 32),
//                   // Submit button
//                   ElevatedButton(
//                     onPressed: () {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Form Submitted!')),
//                       );
//                     },
//                     child: Text('Submit'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           backgroundColor: Colors.grey.shade100,
//         );
//       },
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:newconnection/responsive_row_column.dart';

void main() {
  runApp(
    MaterialApp(home: NewConnectionPage(), debugShowCheckedModeBanner: false),
  );
}
class NewConnectionPage extends StatelessWidget {
  const NewConnectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            title: Text("New Connection Form"),
            backgroundColor: Colors.blueGrey,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Property Type", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("New Connection", style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Service Type", style: TextStyle(fontWeight: FontWeight.bold)),
                            Text("Permanent", style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Divider(height: 32),
                  // Customer Details Heading
                  Text(
                    "Customer Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Divider(height: 15),
                  // National ID
                  Text("National ID", style: TextStyle(color: Colors.grey)),
                  Text("1221344", style: TextStyle(color: Colors.blue)),
                  SizedBox(height: 16),
                  // Customer Name
                  ResponsiveRowColumn(
                    spacing: 10,
                    children: [
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Customer Name *"),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter Customer Name',
                                  border: OutlineInputBorder(),
                                ),
                                controller: TextEditingController(
                                  text: "Mohammed Aslam",
                                ),
                              ),
                            ),
                          ],
                        ),
                      // SizedBox(height: 1),
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Customer Name Arabic *"),
                                SizedBox(
                                  width: 450,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Customer Name Arabic',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                          ],
                        ),
                    ],
                  ),
                  SizedBox(height: 24),
                  // GSM and Email
                  ResponsiveRowColumn(
                    spacing: 10,
                    children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GSM Number",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "+96 706899",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),

                      // SizedBox(height: 1),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email ID",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "sample-email@email.com",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  ResponsiveRowColumn(
                    spacing: 10,
                    children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Alternate Contact Number"),
                            SizedBox(
                              width: 450,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Alternate Contact Number',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      // SizedBox(height: 1),
                      // Container()
                      // SizedBox(width: 250), // fixed Expanded issue
                    ],
                  ),
                  SizedBox(height: 32),
                  // Submit button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Form Submitted!')),
                        );
                      },
                      child: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.grey.shade100,
        );
      },
    );
  }
}

