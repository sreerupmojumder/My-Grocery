import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ProductLoadingCard extends StatelessWidget {
  const ProductLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      shadowColor: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Shimmer.fromColors(
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.white,
          child: Column(
            children: [
              Flexible(
                flex: 4,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.grey.shade300,
                    ),
                  )
              ),
              Flexible(
                flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Container(
                        height: 20,
                        color: Colors.grey.shade300,
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 15,
                        width: 75,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
