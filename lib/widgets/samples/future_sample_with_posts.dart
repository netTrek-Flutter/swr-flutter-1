import 'package:flutter/material.dart';
import 'package:myfirstapp/widgets/services/post_model.dart';
import 'package:myfirstapp/widgets/services/rest.dart';

class FutureSampleWithPosts extends StatelessWidget {
  const FutureSampleWithPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PostModel>(
      future: PostService().getPostById(1),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('ups .... ${snapshot.error}',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ));
        } else if (snapshot.hasData) {
          return buildListViewWithSeperator();
          // return buildListViewWithBuilder();
          // return Text(snapshot.data!.title!);
        }
        return const CircularProgressIndicator();
      },
    );
  }

  ListView buildListViewWithBuilder() {
    return ListView.builder(
      itemBuilder: (context, index) => buildListTile(index, usePadding: true),
      itemCount: 5,
    );
  }

  ListView buildListViewWithSeperator() {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) => buildListTile(index, usePadding: false),
      itemCount: 5,
    );
  }

  ListTile buildListTile(int index, {bool? usePadding = true}) {
    return ListTile(
      contentPadding: usePadding == true
          ? EdgeInsets.all(16)
          : EdgeInsets.all(0), // besser touchbar
      // selected: ,
      tileColor: index % 2 == 0 ? Colors.teal : Colors.teal.shade700,
      title: Text('$index'),
      leading: Icon(Icons.adaptive.share_outlined),
      trailing: Icon(Icons.adaptive.more_outlined),
    );
  }
}
