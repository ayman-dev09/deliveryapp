import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  // عدد الصفوف في كل عمود
  final int rowsPerColumn = 10;

  // البيانات التي سيتم عرضها
  final List<String> items = List.generate(
    100,
    (index) => 'عنصر رقم ${index + 1}',
  );

  // عدد الأعمدة المحسوب تلقائيًا
  late final int columnCount;

  // للتحكم في التنقل بين الأعمدة
  late final PageController pageController;

  // قائمة من ScrollControllers لكل عمود
  late final List<ScrollController> scrollControllers;

  // لتتبع العمود الحالي
  int currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // حساب عدد الأعمدة
    columnCount = (items.length / rowsPerColumn).ceil();

    // تهيئة PageController
    pageController = PageController();

    // إنشاء ScrollController لكل عمود
    scrollControllers = List.generate(
      columnCount,
      (index) => ScrollController(),
    );

    // إضافة مستمع لكل ScrollController لمراقبة التمرير
    for (int i = 0; i < scrollControllers.length; i++) {
      scrollControllers[i].addListener(() {
        // إذا وصل المستخدم لنهاية القائمة
        if (scrollControllers[i].offset >=
            scrollControllers[i].position.maxScrollExtent - 50) {
          if (currentPage < columnCount - 1) {
            currentPage++;
            pageController.animateToPage(
              currentPage,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }
        }
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // تنظيف الموارد
    pageController.dispose();
    for (var controller in scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('قائمة صفوف داخل أعمدة'), centerTitle: true),
      body: PageView.builder(
        controller: pageController,
        itemCount: columnCount,
        itemBuilder: (context, columnIndex) {
          // تحديد العناصر التي تنتمي لهذا العمود
          final start = columnIndex * rowsPerColumn;
          final end = (start + rowsPerColumn).clamp(0, items.length);
          final columnItems = items.sublist(start, end);

          return ListView.builder(
            controller: scrollControllers[columnIndex],
            itemCount: columnItems.length,
            itemBuilder: (context, rowIndex) {
              return ListTile(title: Text(columnItems[rowIndex]));
            },
          );
        },
      ),
    );
  }
}
