import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu_dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // ignore: non_constant_identifier_names
  int current_index = 0;

  // ignore: non_constant_identifier_names
  List NewInfo = [
    {
      "subject": "الرياضيات",
      "description": "الدرس الاول الكسور العشرية",
      "img": "assets/images/img.png"
    },
    {
      "subject": "اللغة العربية",
      "description": "الدرس الاول نحو الفعل المضارع",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    },
    {
      "subject": "الرياضيات",
      "description": "الدرس الاول الكسور العشرية",
      "img": "assets/images/img.png"
    },
    {
      "subject": "اللغة العربية",
      "description": "الدرس الاول نحو الفعل المضارع",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    },
    {
      "subject": "القران الكريم",
      "description": "الدرس الاول سورة الرحمن",
      "img": "assets/images/img.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // to set color toolBar fir mobile same color appBar
          statusBarColor: Colors.transparent, // <-- SEE HERE
        ),
        backgroundColor: const Color(0xff6600a1),
        // hide back button
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "الرئيسية",
          style: TextStyle(color: Colors.white, fontSize: 23),
        ),
      ),
      endDrawer: const Menu_Dashboard(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color.fromARGB(255, 241, 233, 233),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  controller: PageController(
                    // "حجم عرض العناصر الإفتراضي واحد"
                    viewportFraction: 0.85,
                    // "الصورة الي تظهر في البداية الإفتراضي الاندكس صفر"
                    initialPage: 3,
                  ),
                  // "تخلي حركة التنقل سرييييعة"
                  pageSnapping: false,
                  // "حذف المسافات الي في البداية والنهاية"
                  padEnds: false,
                  // "تعكس الصور مثلا لو كان تطبيقك بالعربي"
                  // reverse: true,
                  // "تعطي حركه حلوه لما تسحب وتخلص الصور يتمدد ويرجع لآخر صورة"
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (value) {
                    setState(() {
                      current_index = value;
                    });
                  },
                  itemCount: 5,
                  itemBuilder: (context, i) {
                    return Container(
                      // padding: EdgeInsets.all(10),
                      // "اقتطاع لازم بوردر راديوس في الديكوريشن"
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff6909A0),
                                Color(0xff370554),
                              ]),
                          borderRadius: BorderRadius.circular(25)),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 0,
                                right: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "أهلا بعودتكم",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 250, 244, 244),
                                        fontSize: 23),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "هنا ستجدون كل \n ماتحتاجونه في \n مكان واحد",
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/images/course.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),

            //Circles under the slider
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                // create list with specified length
                children: List.generate(
                    5,
                    (index) => GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.all(3.0),
                            child: Icon(
                              Icons.circle,
                              size: current_index == index ? 15 : 12,
                              color: current_index == index
                                  //condation
                                  ? const Color(0xff6600a1)
                                  : const Color.fromARGB(255, 168, 167, 167),
                            ),
                          ),
                        )),
              ),
            ),
            ///////////////////// part 2 ////////
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "الأحدث",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.filter_list_rounded,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: NewInfo.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 85,
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
                          padding: const EdgeInsets.only(
                            bottom: 7,
                            top: 7,
                            right: 7,
                            left: 13,
                          ),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 241, 241, 241),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 6.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: Image.asset(NewInfo[index]['img'])),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                flex: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      NewInfo[index]["subject"],
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      NewInfo[index]["description"],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff707070)),
                                    ),
                                  ],
                                ),
                              ),
                              // const Spacer(),
                              const SizedBox(
                                width: 10,
                              ),
                              const Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.black38,
                                  size: 25,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
