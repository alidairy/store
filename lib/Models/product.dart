class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });

 
}
//The lists of products came from chatGPT 
List<Product> smartDevices = [
  Product(
    id: 1,
    price: 299,
    title: "سماعة ذكية بلوتوث",
    subTitle: "عزل ضوضاء ومكالمات واضحة",
    image: "https://images.unsplash.com/photo-1585386959984-a41552205d73?auto=format&fit=crop&w=800&q=80",
    description:
        "سماعة بلوتوث بتقنية إلغاء الضوضاء، بطارية طويلة وميكروفون مدمج لمكالمات واضحة وجودة صوت ممتازة.",
  ),
  Product(
    id: 2,
    price: 1299,
    title: "هاتف ذكي بشاشة OLED",
    subTitle: "كاميرا احترافية وشحن سريع",
    image:
        "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=800&q=80",
    description:
        "هاتف ذكي بمواصفات حديثة، كاميرا متعددة العدسات، أداء قوي وشاشة OLED مشرقة لتجربة مشاهدة مميزة.",
  ),
  Product(
    id: 3,
    price: 499,
    title: "سماعات رأس لاسلكية",
    subTitle: "تصميم مريح للصوت الطويل",
    image:
        "https://images.unsplash.com/photo-1518444023909-0b9d3c4f1d4a?auto=format&fit=crop&w=800&q=80",
    description:
        "سماعات رأس مريحة مع صوت عميق وباس واضح، مثالية للموسيقى والألعاب والسفر.",
  ),
  Product(
    id: 4,
    price: 149,
    title: "سماعة ذكية صغيرة",
    subTitle: "مساعد صوتي مدمج",
    image:
        "https://images.unsplash.com/photo-1555066931-4365d14bab8c?auto=format&fit=crop&w=800&q=80",
    description:
        "مكبر صوت ذكي بحجم صغير يوفر تشغيل موسيقى ذكي، اتصال سهل بالأجهزة ومساعد صوتي مدمج.",
  ),
  Product(
    id: 5,
    price: 89,
    title: "سوار رياضي ذكي",
    subTitle: "مراقبة نبضات القلب والنشاط",
    image:
        "https://images.unsplash.com/photo-1516574187841-cb9cc2ca948b?auto=format&fit=crop&w=800&q=80",
    description:
        "سوار رياضي بتتبع النشاط اليومي، قياس نبضات القلب وإشعارات الهاتف مع عمر بطارية طويل.",
  ),
  Product(
    id: 6,
    price: 349,
    title: "كاميرا مراقبة ذكية",
    subTitle: "رؤية ليلية وتخزين سحابي",
    image:
        "https://images.unsplash.com/photo-1587825140708-1ae7d0f79bc6?auto=format&fit=crop&w=800&q=80",
    description:
        "كاميرا مراقبة منزلية بدقة عالية، رؤية ليلية وآمن، مع إمكانية التخزين السحابي والتنبيهات الفورية.",
  ),
  Product(
    id: 7,
    price: 229,
    title: "سماعة ألعاب لاسلكية",
    subTitle: "زمن استجابة منخفض وصوت محيطي",
    image:
        "https://images.unsplash.com/photo-1606813902613-1b9b7b15c6d0?auto=format&fit=crop&w=800&q=80",
    description:
        "سماعة مصممة للاعبين مع زمن استجابة منخفض وصوت محيطي لتمييز التفاصيل أثناء اللعب.",
  ),
  Product(
    id: 8,
    price: 59,
    title: "سماعات داخل الأذن",
    subTitle: "مريحة وعزل بسيط للضوضاء",
    image:
        "https://images.unsplash.com/photo-1518444023909-0b9d3c4f1d4a?auto=format&fit=crop&w=600&q=80",
    description:
        "سماعات داخل الأذن خفيفة الوزن مع حشوات مريحة وصوت واضح للمكالمات والموسيقى.",
  ),
  Product(
    id: 9,
    price: 179,
    title: "مكبر صوت محمول",
    subTitle: "قوي ومقاوم للماء",
    image:
        "https://images.unsplash.com/photo-1580894908361-4f1b4aaec3c2?auto=format&fit=crop&w=800&q=80",
    description:
        "مكبر صوت محمول بقوة صوت عالية ومقاومة للماء، مثالي للحفلات والرحلات في الهواء الطلق.",
  ),
  Product(
    id: 10,
    price: 399,
    title: "نظارة الواقع الافتراضي",
    subTitle: "تجربة غامرة ثلاثية الأبعاد",
    image:
        "https://images.unsplash.com/photo-1526406915891-9b6b1a7a1a1a?auto=format&fit=crop&w=800&q=80",
    description:
        "نظارة واقع افتراضي عالية الوضوح لتجربة ألعاب وغمر بصري مع راحة طويلة أثناء الاستخدام.",
  ),
];

List<Product> electricalDevices = [
  Product(
    id: 1,
    price: 249,
    title: "خلاط كهربائي بمزج قوي",
    subTitle: "عدة سرعات وشفرات فولاذية",
    image:
        "https://unsplash.com/photos/LbJ_jSAepKM/download?ixid=M3wxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNzU4MDY1NzQ4fA&force=true&w=640",
    description:
        "خلاط كهربائي متعدد السرعات لشرب العصائر وتحضير الصلصات مع شفرات فولاذية قوية وسهل التنظيف.",
  ),
  Product(
    id: 2,
    price: 399,
    title: "ماكينة قهوة اسبريسو",
    subTitle: "ضغط عالي وكبة رغوة",
    image:
        "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=80",
    description:
        "ماكينة اسبريسو منزلية لإعداد قهوة غنية وكريمية مع تحكم في الحرارة وخيارات رغوة الحليب.",
  ),
  Product(
    id: 3,
    price: 129,
    title: "محمصة خبز ذكية",
    subTitle: "إعدادات تحميص متعددة",
    image:
        "https://images.unsplash.com/photo-1513694203234-719a78a0d8f4?auto=format&fit=crop&w=800&q=80",
    description:
        "محمصة سريعة متعددة الإعدادات مع وظيفة إلغاء وتدفئة للحفاظ على جودة الخبز.",
  ),
  Product(
    id: 4,
    price: 499,
    title: "مكيف هواء محمول",
    subTitle: "تبريد سريع واستهلاك منخفض للطاقة",
    image:
        "https://images.unsplash.com/photo-1582719478189-7c64b7f6f8b9?auto=format&fit=crop&w=800&q=80",
    description:
        "مكيف محمول سهل النقل مع أوضاع تبريد ومرطبات مدمجة لتوفير جو مريح في الغرفة.",
  ),
  Product(
    id: 5,
    price: 199,
    title: "مروحة مكتبية هادئة",
    subTitle: "تصميم صغير وفعال",
    image:
        "https://images.unsplash.com/photo-1508921912186-1d1a45ebb3c1?auto=format&fit=crop&w=800&q=80",
    description:
        "مروحة صغيرة لطاولة المكتب بتصميم هادئ ومروحة متعددة السرعات لتبريد شخصي.",
  ),
  Product(
    id: 6,
    price: 349,
    title: "مطحنة قهوة كهربائية",
    subTitle: "طحن دقيق لحبوب القهوة",
    image:
        "https://images.unsplash.com/photo-1541167760496-1628856ab772?auto=format&fit=crop&w=800&q=80",
    description:
        "مطحنة قهوة كهربائية بشتلات طحن لضبط نعومة الحبوب مع وعاء سهل التنظيف.",
  ),
  Product(
    id: 7,
    price: 89,
    title: "محمصة كهربائية صغيرة",
    subTitle: "مناسبة للرحلات والمخيمات",
    image:
        "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=800&q=80",
    description:
        "محمصة صغيرة تعمل بالطاقة الكهربائية، خفيفة ومناسبة للرحلات الخارجية أو المطبخ الصغير.",
  ),
  Product(
    id: 8,
    price: 599,
    title: "فرن كهربائي متعدد الوظائف",
    subTitle: "قلي، خبز، شواء",
    image:
        "https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=800&q=80",
    description:
        "فرن كهربائي صغير مع شواية داخلية ومؤقت، مناسب لتحضير وجبات سريعة وشهية.",
  ),
  Product(
    id: 9,
    price: 159,
    title: "غلاية كهربائية سريعة",
    subTitle: "إغلاق تلقائي ومقاومة للصدأ",
    image:
        "https://images.unsplash.com/photo-1509460913899-5b2c3a6e4b5a?auto=format&fit=crop&w=800&q=80",
    description:
        "غلاية كهربائية بقوة عالية لغلي الماء بسرعة مع غطاء أمان وإغلاق تلقائي.",
  ),
  Product(
    id: 10,
    price: 259,
    title: "مكواة بخار منزلية",
    subTitle: "بخار قوي للتجاعيد الصعبة",
    image:
        "https://images.unsplash.com/photo-1585386959984-0b3c1d66e7b9?auto=format&fit=crop&w=800&q=80",
    description:
        "مكواة بخار مع قوة بخار عالية لتنعيم الملابس بسرعة وسهولة مع حماية للأقمشة.",
  ),
];

List<Product> babyGames = [
  Product(
    id: 1,
    price: 49,
    title: "مجموعة ألعاب تعليمية للأطفال",
    subTitle: "تطوير المهارات الحركية والذهنية",
    image:
        "https://images.unsplash.com/photo-1544453714-8e0d6f1d8f0f?auto=format&fit=crop&w=800&q=80",
    description:
        "طقم ألعاب ملون يساعد الأطفال على تعلم الأشكال والألوان وتنمية المهارات الحركية بطريقة آمنة.",
  ),
  Product(
    id: 2,
    price: 79,
    title: "دب لينة للأطفال",
    subTitle: "قماش ناعم وصديق للأطفال",
    image:
        "https://images.unsplash.com/photo-1542060746-2a0b4f8a1a8b?auto=format&fit=crop&w=800&q=80",
    description:
        "دب محشو ناعم مع مواد آمنة يناسب نوم الأطفال ولحظات اللعب الهادئ.",
  ),
  Product(
    id: 3,
    price: 99,
    title: "عربة أطفال قابلة للطي",
    subTitle: "خفيفة وسهلة التخزين",
    image:
        "https://images.unsplash.com/photo-1520975868313-1a7f0f6b8a5f?auto=format&fit=crop&w=800&q=80",
    description:
        "عربة أطفال عملية قابلة للطي مع حزام أمان ومقعد مريح للمشي اليومي.",
  ),
  Product(
    id: 4,
    price: 35,
    title: "لعبة بناء خشبية",
    subTitle: "تنمية التفكير الابتكاري",
    image:
        "https://images.unsplash.com/photo-1563201511-9b8f2d9b3d3f?auto=format&fit=crop&w=800&q=80",
    description:
        "قطع بناء خشبية آمنة تساعد الأطفال على تطوير مهارات التصميم والتركيز بطريقة ممتعة.",
  ),
  Product(
    id: 5,
    price: 59,
    title: "موسيقية تعليمية",
    subTitle: "تعلم الألحان والأصوات",
    image:
        "https://images.unsplash.com/photo-1511379938547-c1f69419868d?auto=format&fit=crop&w=800&q=80",
    description:
        "آلة موسيقية صغيرة للأطفال تساعد على إدراك الإيقاع وتطوير الحس الموسيقي منذ سن مبكرة.",
  ),
  Product(
    id: 6,
    price: 29,
    title: "حصيرة لعب مقاومة للماء",
    subTitle: "سهلة التنظيف ومريحة",
    image:
        "https://images.unsplash.com/photo-1582719478189-7c64b7f6f8b9?auto=format&fit=crop&w=800&q=80",
    description:
        "حصيرة لعب ملونة توفر مساحة آمنة للعب داخل المنزل كما أنها سهلة التنظيف ومقاومة للماء.",
  ),
  Product(
    id: 7,
    price: 149,
    title: "ساعة ذكية للأطفال",
    subTitle: "تعقب الموقع ومكالمات أمان",
    image:
        "https://images.unsplash.com/photo-1541534401786-9c2f7bb0f4b8?auto=format&fit=crop&w=800&q=80",
    description:
        "ساعة ذكية مع خاصية تعقب الموقع ومكالمات الطوارئ، مناسبة لحماية الأطفال أثناء الخروج.",
  ),
  Product(
    id: 8,
    price: 69,
    title: "كتاب تفاعلي للأطفال",
    subTitle: "أصوات وحكايات ممتعة",
    image:
        "https://images.unsplash.com/photo-1519677100203-a0e668c92439?auto=format&fit=crop&w=800&q=80",
    description:
        "كتاب تفاعلي بصور وأصوات يساعد الأطفال على تعلم الكلمات والحكايات بطريقة ممتعة.",
  ),
  Product(
    id: 9,
    price: 89,
    title: "لعبة سحب وترتيب",
    subTitle: "تعليم الترتيب والتنسيق",
    image:
        "https://images.unsplash.com/photo-1584444162475-3e9b7f3c1a9f?auto=format&fit=crop&w=800&q=80",
    description:
        "لعبة تعليمية تساعد الطفل على ترتيب الأشكال والألوان واكتساب مهارات حل المشكلات.",
  ),
  Product(
    id: 10,
    price: 199,
    title: "مسرح دمى محمول",
    subTitle: "ساعات من التمثيل والمرح",
    image:
        "https://images.unsplash.com/photo-1548199973-03cce0bbc87b?auto=format&fit=crop&w=800&q=80",
    description:
        "مسرح صغير للدمى مع أقنعة وشخصيات لتشجيع اللعب الإبداعي والسرد القصصي لدى الأطفال.",
  ),
];

List<Product> houseDecoration = [
  Product(
    id: 1,
    price: 179,
    title: "مصباح أرضي مودرن",
    subTitle: "إضاءة دافئة وتصميم أنيق",
    image:
        "https://images.unsplash.com/photo-1493666438817-866a91353ca9?auto=format&fit=crop&w=800&q=80",
    description:
        "مصباح أرضي بتصميم مودرن يضفي جوًا دافئًا على غرفة المعيشة مع شدة إضاءة قابلة للتعديل.",
  ),
  Product(
    id: 2,
    price: 299,
    title: "سجادة صوفية فاخرة",
    subTitle: "نقوش يدوية وجودة عالية",
    image:
        "https://images.unsplash.com/photo-1505691723518-36a2d5f3a1a3?auto=format&fit=crop&w=800&q=80",
    description:
        "سجادة مصنوعة من ألياف ناعمة تضيف لمسة من الفخامة والراحة إلى أي مساحة داخلية.",
  ),
  Product(
    id: 3,
    price: 89,
    title: "مرآة حائط ديكورية",
    subTitle: "إطار معدني أنيق",
    image:
        "https://images.unsplash.com/photo-1524758631624-e2822e304c36?auto=format&fit=crop&w=800&q=80",
    description:
        "مرآة حائط مع إطار أنيق تضيف عمقًا وإضاءة طبيعية إلى المساحات الصغيرة.",
  ),
  Product(
    id: 4,
    price: 129,
    title: "لوحة فنية مطبوعة",
    subTitle: "ألوان زاهية وجودة عالية",
    image:
        "https://images.unsplash.com/photo-1472214103451-9374bd1c798e?auto=format&fit=crop&w=800&q=80",
    description:
        "لوحة فنية تضيف لمسة جمالية وحيوية لجدران منزلك، مطبوعة بألوان تدوم طويلاً.",
  ),
  Product(
    id: 5,
    price: 59,
    title: "مزهرية سيراميك",
    subTitle: "تصميم أنيق لعناصر الديكور",
    image:
        "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=800&q=80",
    description:
        "مزهرية سيراميك بتشطيب يدوي تضيف لمسة فنية لمائدة الغرفة أو الرفوف.",
  ),
  Product(
    id: 6,
    price: 219,
    title: "طقم وسائد ديكور",
    subTitle: "قماش ناعم ونقوش معاصرة",
    image:
        "https://images.unsplash.com/photo-1505691723518-36a2d5f3a1a3?auto=format&fit=crop&w=700&q=80",
    description:
        "مجموعة وسائد تضفي راحة ولمسة تصميمية على الأريكة أو السرير بتشكيلة ألوان متناسقة.",
  ),
  Product(
    id: 7,
    price: 179,
    title: "ساعة حائط ديكورية",
    subTitle: "تصميم عصري وهادئ",
    image:
        "https://images.unsplash.com/photo-1515879218367-8466d910aaa4?auto=format&fit=crop&w=800&q=80",
    description:
        "ساعة حائط بتصميم عصري تضيف لمسة جمالية وعملية لتعقب الوقت داخل المنزل.",
  ),
  Product(
    id: 8,
    price: 349,
    title: "رف كتب معدني",
    subTitle: "خامة متينة وتصميم عملي",
    image:
        "https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?auto=format&fit=crop&w=800&q=80",
    description:
        "رف كتب بخطوط حديثة مناسب لتنظيم الكتب والتحف مع متانة عالية ومقاومة للتآكل.",
  ),
  Product(
    id: 9,
    price: 99,
    title: "ستارة خفيفة",
    subTitle: "قماش يسمح بمرور الضوء",
    image:
        "https://images.unsplash.com/photo-1519710164239-da123dc03ef4?auto=format&fit=crop&w=700&q=80",
    description:
        "ستارة خفيفة تسمح بمرور الضوء الطبيعي مع حماية خصوصية معتدلة وتصميم مناسب لغرفة المعيشة.",
  ),
  Product(
    id: 10,
    price: 259,
    title: "سلة تخزين متعددة الاستخدام",
    subTitle: "تصميم عملي ومتين",
    image:
        "https://images.unsplash.com/photo-1505691723518-36a2d5f3a1a3?auto=format&fit=crop&w=600&q=80",
    description:
        "سلة تخزين للتنظيم في غرف النوم والمساحات الصغيرة مع تصميم يناسب الديكور العصري.",
  ),
];

List<Product> foodStaff = [
  Product(
    id: 1,
    price: 25,
    title: "عسل طبيعي نقي",
    subTitle: "عبوة 500 غرام",
    image:
        "https://images.unsplash.com/photo-1504674900247-0877df9cc836?auto=format&fit=crop&w=800&q=80",
    description:
        "عسل طبيعي نقي من مزارع مختارة، مناسب للتحلية والوصفات الصحية، بدون إضافات.",
  ),
  Product(
    id: 2,
    price: 15,
    title: "شاي أخضر عضوي",
    subTitle: "حزمة 200 غرام",
    image:
        "https://images.unsplash.com/photo-1518976024611-0b0b3d9f0e8a?auto=format&fit=crop&w=800&q=80",
    description:
        "شاي أخضر من مزارع عضوية، غني بمضادات الأكسدة ونكهة طبيعية منعشة.",
  ),
  Product(
    id: 3,
    price: 40,
    title: "قهوة عربية محمصة",
    subTitle: "حبوب مختارة 250 غرام",
    image:
        "https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=800&q=80",
    description:
        "قهوة عربية محمصة بعناية بطعم غني ورائحة مميزة، مناسبة للضيافة والمناسبات.",
  ),
  Product(
    id: 4,
    price: 12,
    title: "زيت زيتون بكر ممتاز",
    subTitle: "عبوة 250 مل",
    image:
        "https://images.unsplash.com/photo-1587316745621-3757c7076f4f?auto=format&fit=crop&w=800&q=80",
    description:
        "زيت زيتون بكر ممتاز بنكهة غنية ومناسبة للطهي والسلطات، مع درجة حموضة منخفضة.",
  ),
  Product(
    id: 5,
    price: 8,
    title: "عصير طبيعي برتقال",
    subTitle: "قناة طازجة 1 لتر",
    image:
        "https://images.unsplash.com/photo-1572441710264-3d8f8f8b9b5b?auto=format&fit=crop&w=800&q=80",
    description:
        "عصير برتقال طبيعي 100% بدون مواد حافظة، طازج ومنعش لجميع أفراد الأسرة.",
  ),
  Product(
    id: 6,
    price: 30,
    title: "تمر فاخر مختار",
    subTitle: "علبة 500 غرام",
    image:
        "https://images.unsplash.com/photo-1580913429547-9d6f1f3a2b8c?auto=format&fit=crop&w=800&q=80",
    description:
        "تمر طازج ذو جودة عالية، نكهة غنية ومناسب كوجبة خفيفة أو للضيافة.",
  ),
  Product(
    id: 7,
    price: 18,
    title: "مربى الفواكه الطبيعية",
    subTitle: "حشوة 300 غرام",
    image:
        "https://images.unsplash.com/photo-1528825871115-3581a5387919?auto=format&fit=crop&w=800&q=80",
    description:
        "مربى مصنوع من فواكه طبيعية، نسبة سكر متوازنة ونكهة غنية مثالية للفطور.",
  ),
  Product(
    id: 8,
    price: 10,
    title: "شوكولاتة داكنة",
    subTitle: "لوح 100 غرام",
    image:
        "https://images.unsplash.com/photo-1589308078059-6b9d4b9d8f6e?auto=format&fit=crop&w=800&q=80",
    description:
        "شوكولاتة داكنة عالية الجودة بطعم غني ومناسب للهدايا أو كوجبة صغيرة.",
  ),
  Product(
    id: 9,
    price: 22,
    title: "مكسرات مشكلة",
    subTitle: "عبوة 300 غرام",
    image:
        "https://images.unsplash.com/photo-1544025162-d76694265947?auto=format&fit=crop&w=800&q=80",
    description:
        "مكسرات مشكلة محمصة ومملحة قليلاً، مزيج من اللوز والكاجو والفستق للوجبات الخفيفة.",
  ),
  Product(
    id: 10,
    price: 28,
    title: "عصير طبيعي توت مشكل",
    subTitle: "قناة طازجة 1 لتر",
    image:
        "https://images.unsplash.com/photo-1567303316309-8b0b4a5a3f2b?auto=format&fit=crop&w=800&q=80",
    description:
        "عصير توت طبيعي بنكهة مركزة ومنعشة، بدون مواد حافظة، مناسب للأطفال والبالغين.",
  ),
];

List<Product> personalStaff = [
  Product(
    id: 1,
    price: 45,
    title: "مجموعة عناية بالبشرة",
    subTitle: "منظف ومرطب ومقشر",
    image:
        "https://images.unsplash.com/photo-1588774069160-affa7e7d2d8b?auto=format&fit=crop&w=800&q=80",
    description:
        "طقم عناية يحتوي على منظف لطيف ومرطب غني ومقشر لإشراقة صحية لبشرتك.",
  ),
  Product(
    id: 2,
    price: 25,
    title: "فرشاة أسنان كهربائية",
    subTitle: "رؤوس قابلة للاستبدال",
    image:
        "https://images.unsplash.com/photo-1588774069160-2b5b1a5f7c9a?auto=format&fit=crop&w=800&q=80",
    description:
        "فرشاة أسنان كهربائية مع رؤوس متعددة ونظام تنظيف فعال لإزالة البلاك.",
  ),
  Product(
    id: 3,
    price: 59,
    title: "مجفف شعر احترافي",
    subTitle: "قوة عالية وملحقات متعددة",
    image:
        "https://images.unsplash.com/photo-1548082570-9b7f8f3b1a6d?auto=format&fit=crop&w=800&q=80",
    description:
        "مجفف شعر بقدرة عالية مع فوهات مخصصة لتصفيف سريع ونتيجة احترافية.",
  ),
  Product(
    id: 4,
    price: 19,
    title: "مزيل عرق طبيعي",
    subTitle: "تركيبة لطيفة للبشرة",
    image:
        "https://images.unsplash.com/photo-1582719478189-7c64b7f6f8b9?auto=format&fit=crop&w=800&q=80",
    description:
        "مزيل رائحة عرق بطبيعة مكونات لطيفة يضمن حماية طويلة ويعتني بالبشرة.",
  ),
  Product(
    id: 5,
    price: 35,
    title: "طقم حلاقة كهربائي",
    subTitle: "شفرات دقيقة ومتانة",
    image:
        "https://images.unsplash.com/photo-1594759205678-9c3b7b6f0c9b?auto=format&fit=crop&w=800&q=80",
    description:
        "مكينة حلاقة كهربائية بتصميم مريح وشفرات دقيقة لحلاقة نظيفة وسريعة.",
  ),
  Product(
    id: 6,
    price: 49,
    title: "عطر رجالي فاخر",
    subTitle: "رائحة طويلة الأمد",
    image:
        "https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb?auto=format&fit=crop&w=800&q=80",
    description:
        "عطر ذو رائحة مميزة يدوم لساعات مع قاعدة عميقة تناسب المناسبات والسهرات.",
  ),
  Product(
    id: 7,
    price: 29,
    title: "زيت تدليك عضلات",
    subTitle: "تركيبة مهدئة",
    image:
        "https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?auto=format&fit=crop&w=800&q=80",
    description:
        "زيت تدليك طبيعي لارتخاء العضلات وتخفيف التوتر بعد التمارين أو يوم طويل.",
  ),
  Product(
    id: 8,
    price: 22,
    title: "قناع شعر مغذي",
    subTitle: "ترميم وترطيب عميق",
    image:
        "https://images.unsplash.com/photo-1584999732984-6f0f3a7133b8?auto=format&fit=crop&w=800&q=80",
    description:
        "قناع غنى بالفيتامينات لبناء الشعر وترطيبه وتقليل التقصف مع لمعان صحي.",
  ),
  Product(
    id: 9,
    price: 55,
    title: "مجموعة عناية باللحية",
    subTitle: "زيت وشامبو وفرشاة",
    image:
        "https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=800&q=80",
    description:
        "طقم كامل للعناية باللحية يتضمن زيت طبيعي وشامبو وفرشاة لتصفيف وترطيب مثالي.",
  ),
  Product(
    id: 10,
    price: 39,
    title: "مستحضر واقٍ من الشمس",
    subTitle: "حماية يومية فعالة",
    image:
        "https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb?auto=format&fit=crop&w=700&q=80",
    description:
        "واقي شمس خفيف مناسب للاستخدام اليومي يحمي البشرة من الأشعة الضارة ويمنحها نعومة.",
  ),
];

List<Product> spoortStaff = [
  Product(
    id: 1,
    price: 89,
    title: "حذاء رياضي خفيف",
    subTitle: "تصميم مريح للجري",
    image:
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=80",
    description:
        "حذاء خفيف ومرن مناسب للجري والمشي مع نعل يمتص الصدمات لتجربة مريحة.",
  ),
  Product(
    id: 2,
    price: 59,
    title: "حصيرة يوغا مضادة للانزلاق",
    subTitle: "سمك مريح وملمس ناعم",
    image:
        "https://images.unsplash.com/photo-1545239351-1141bd82e8a6?auto=format&fit=crop&w=800&q=80",
    description:
        "حصيرة يوغا ذات سطح مانع للانزلاق وسمك مناسب للتمارين الأرضية واليوغا المنزلية.",
  ),
  Product(
    id: 3,
    price: 129,
    title: "دمبل قابل للتعديل",
    subTitle: "وزن متغير حسب الحاجة",
    image:
        "https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?auto=format&fit=crop&w=800&q=80",
    description:
        "دمبل بتصميم قابل للتعديل مناسب لبناء القوة وتغيير مستوى المقاومة بسهولة.",
  ),
  Product(
    id: 4,
    price: 45,
    title: "حبل قفز احترافي",
    subTitle: "مناسب للتمارين الهوائية",
    image:
        "https://images.unsplash.com/photo-1526406915891-9b6b1a7a1a1a?auto=format&fit=crop&w=800&q=80",
    description:
        "حبل قفز موازن وخفيف يساعد على تحسين القدرة الهوائية وحرق السعرات بكفاءة.",
  ),
  Product(
    id: 5,
    price: 199,
    title: "جهاز تتبع مدى اللياقة",
    subTitle: "قياس نبض ومعدل النوم",
    image:
        "https://images.unsplash.com/photo-1518444023909-0b9d3c4f1d4a?auto=format&fit=crop&w=800&q=80",
    description:
        "جهاز تعقب لياقة بدنية لقياس النشاط اليومي ومراقبة نبض القلب وحساب السعرات.",
  ),
  Product(
    id: 6,
    price: 299,
    title: "دراجة ثابتة منزلية",
    subTitle: "تمارين قلبية في المنزل",
    image:
        "https://images.unsplash.com/photo-1594737625785-1b9f7a2d8e9b?auto=format&fit=crop&w=800&q=80",
    description:
        "دراجة ثابتة ببرامج تدريب متعددة وشاشة عرض لمتابعة الأداء ومعدل ضربات القلب.",
  ),
  Product(
    id: 7,
    price: 79,
    title: "قفازات رفع الأثقال",
    subTitle: "حماية ومقبض أفضل",
    image:
        "https://images.unsplash.com/photo-1526401281623-7c2b4a4b4b9a?auto=format&fit=crop&w=800&q=80",
    description:
        "قفازات مريحة مع قاعدة داعمة لمقبض أفضل أثناء التمارين ووقاية لليدين.",
  ),
  Product(
    id: 8,
    price: 49,
    title: "حزام رفع أثقال",
    subTitle: "دعم الظهر أثناء التمارين",
    image:
        "https://images.unsplash.com/photo-1526401281623-7c2b4a4b4b9a?auto=format&fit=crop&w=700&q=80",
    description:
        "حزام داعم للظهر يحسن من ثبات الجسم أثناء رفع الأوزان الثقيلة ويقلل من خطر الإصابات.",
  ),
  Product(
    id: 9,
    price: 59,
    title: "سترة جري عاكسة",
    subTitle: "مرئية أثناء الليل",
    image:
        "https://images.unsplash.com/photo-1544441898-2aa2b0e8f1a1?auto=format&fit=crop&w=800&q=80",
    description:
        "سترة خفيفة عاكسة مناسبة للجري في الصباح أو الليل لزيادة السلامة والوضوح.",
  ),
  Product(
    id: 10,
    price: 149,
    title: "حقيبة ظهر رياضية",
    subTitle: "مساحة تخزين لمعدات التمرين",
    image:
        "https://images.unsplash.com/photo-1520975868313-1a7f0f6b8a5f?auto=format&fit=crop&w=800&q=80",
    description:
        "حقيبة ظهر مصممة للرياضيين مع جيوب متعددة لمساحة تخزين معدات التمرين والماء.",
  ),
];

