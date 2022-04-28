import 'package:flutter/material.dart';
import 'package:onboarding/services/local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:timezone/data/latest.dart' as tz;
class NotificationPage extends StatefulWidget {
  const NotificationPage({ Key? key }) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
       
       floatingActionButton: FloatingActionButton(onPressed: () async{
         TimeOfDay? picked = await 
         showTimePicker(context: context, initialTime: TimeOfDay(hour: 12,minute:00));
          await NotificationService().showNotification(id: 1, title: 'Bildirishnoma: 1', body: "Notification come in");
          setState(() {
            
          });
        },
        child: Icon(Icons.notification_add_outlined),),
        
    );
  }
}