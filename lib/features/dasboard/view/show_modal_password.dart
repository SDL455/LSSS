import 'package:flutter/material.dart';

class ShowModalPassword extends StatelessWidget {
  const ShowModalPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('ປ່ຽນລະຫັດຜ່ານ'),
                ),
              );
            });
      },
      child: Card(
        elevation: 0,
        child: ListTile(
          leading: const Icon(Icons.lock),
          title: const Text('ປ່ຽນລະຫັດຜ່ານ'),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
