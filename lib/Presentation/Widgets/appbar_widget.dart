import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Data/Utils/color_util.dart';

bool value = true;

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      centerTitle: true,
      title: SizedBox(
        height: 90,
        width: 80,
        child: IconButton(
          onPressed: () {
            if (value) {
              value = false;
            } else if (!value) {
              value = true;
            }
            final provider = Provider.of<ThemeProvider>(context, listen: false);
            provider.toggleTheme(value);
          },
          icon: Image.asset(
            'Assets/nike.png',
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            CupertinoIcons.cart,
            color: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.6),
            size: 30,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/cart-screen');
          },
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
