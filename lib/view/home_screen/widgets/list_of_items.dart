import 'package:flutter/material.dart';
import 'package:upgrade/view/common_colors.dart';
import 'package:upgrade/view/home_screen/widgets/custom_text.dart';
import 'package:upgrade/view/util.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const Content(),
        separatorBuilder: (context, index) {
          if ((index - 1) % 3 == 0) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const TopRow(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/chatBot_head.png",
                          width: 70,
                          height: 70,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                SizedBox(
                                  width: 150,
                                  child: CustomText(
                                    content: "ChatBot ",
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            const CustomText(content: "free")
                          ],
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(green)),
                            onPressed: () {},
                            child: const CustomText(
                              content: "install",
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const SizedBox(
                      width: 300,
                      child: CustomText(
                          content:
                              " a faster way to connect with friends Download Now!"),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        "assets/gplay.png",
                        width: 70,
                        height: 30,
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return const SizedBox(
              height: 10,
            );
          }
        },
        itemCount: 100);
  }
}

class TopRow extends StatelessWidget {
  const TopRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: orange,
          ),
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: CustomText(
              content: "Ad",
              colour: white,
            ),
          ),
        ),
        SizedBox(
          width: 50,
          child: Row(
            children: [
              SizedBox(
                width: 20,
                child: IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.info_outline)),
              ),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 20,
                child: IconButton(
                    iconSize: 20,
                    onPressed: () {},
                    icon: const Icon(Icons.close)),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              content: "Heading",
              size: 20,
            ),
            Row(
              children: [
                const CustomText(content: "\$200"),
                width15,
                const CustomText(content: "Dinner salad"),
              ],
            ),
            const CustomText(
              content: "shaved, risins",
              size: 15,
            ),
          ],
        ),
      ),
    );
  }
}
