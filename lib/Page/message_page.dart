import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_project/Provider/data_provider.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    dataProvider.loadMessages();
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder(
        future: dataProvider.loadMessages(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: dataProvider.messages.length,
            itemBuilder: (context, index) {
              final message = dataProvider.messages[index];
              return ListTile(
                leading: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                  ),
                ),
                title: Text(
                  message.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  message.message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {},
              );
            },
          );
        },
      ),
    );
  }
}
