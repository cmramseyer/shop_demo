# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([{email: 'cmramseyer@gmail.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'tim@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'zack@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'jen@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_john@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_alice@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_rose@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'}])

carlos = User.find_by_email('cmramseyer@gmail.com')
tim = User.find_by_email('tim@shopdemo.com')
zack = User.find_by_email('zack@shopdemo.com')
jen = User.find_by_email('jen@shopdemo.com')
john = User.find_by_email('user_john@shopdemo.com')
alice = User.find_by_email('user_alice@shopdemo.com')
rose = User.find_by_email('user_rose@shopdemo.com')

Category.create!([{name: 'TV'}, {name: 'Monitor'}, {name: 'Smartphone'}, {name: 'Notebook'}, {name: 'PC Accessories'}])

category_tv = Category.find_by_name("TV")
category_monitor = Category.find_by_name("Monitor")
category_smartphone = Category.find_by_name("Smartphone")
category_notebook = Category.find_by_name("Notebook")
category_pc_accessories = Category.find_by_name("PC Accessories")

Product.create!([{category: category_tv, name: 'LG OLEDB8P series', description: "OLED TVs are the picture quality kings, but they're not cheap. The TVs' OLED displays use organic light-emitting diode technology to deliver brightness and contrast and viewing angles that no LCD TV (or QLED) can match. Even in mid-2019, this OLED TV from 2018 is still the one to buy. With image quality very close to the 2019 C9 (below) and a price that's hundreds less, the B8 has aged beautifully. That said, we expect the 2019 B9 (also below) to fall in price soon, so the B8's place at the top of this list won't last forever.", price: 1500, brand: 'LG' },
{category: category_tv, name: 'TCL 6-Series', description: "No TV I've ever tested offers this much picture quality for this little cash. Another holdover from 2018, the 6-Series is still widely available at closeout prices because the new 2019 version is coming soon. And it's a steal. With full-array local dimming, its picture runs circles around just about any other TV at this price, and its Roku TV operating system is our hands-down favorite.", price: 1349.99, brand: 'TCL'},
{category: category_tv, name: 'LG OLEDC9P series', description: "What's that you say? You just want the best, money no object? Here you go. In my side-by-side tests the C9 is the best TV I've ever reviewed, barely beating the 2018 models like the B8 (above), but the B8 is a superior value -- almost as good and much less expensive. This 2019 OLED TV also has all the HDMI 2.1 future-proofing that some high-end buyers, particularly gamers, desire.", price: 1899.5, brand: 'LG'},
{category: category_tv, name: 'Vizio M8-Series Quantum', description: "Aside from the TCL 6-Series above, no TV offers this much picture for this little cash. In my comparisons, the Vizio did show superior HDR color to the TCL, but the TCL won in other areas, in particular brightness. I'd still recommend the TCL to most buyers because of its superior Roku smart TV system, but the Vizio is still an excellent choice. Just make sure you're getting the M8, not the M7. And stay tuned for upcoming reviews of Vizio's other 2019 models.", price: 890, brand: 'Vizio'},
{category: category_tv, name: 'TCL 4-Series', description: "Roku is our favorite platform for streaming apps like Netflix, and it's even better baked into the TV. This TCL 4-Series can't beat any of the models above on image quality -- its 4K resolution and HDR compatibility don't do anything to help the picture -- but it's perfectly fine for most people, especially at this price.", price: 950, brand: 'TCL'},
{category: category_tv, name: 'Samsung Q70R series', description: "Samsung's QLED TVs are basically fancy LCDs -- don't confuse them with OLEDs. The Q70R has an excellent picture and plenty of Samsung design and features goodies for a price that's relatively affordable, albeit not exactly 'budget'. If you're not interested in a TCL or Vizio and don't want to splurge for an OLED, the Q70 is an excellent choice.", price: 2150, brand: 'Samsung'}])

product0 = Product.all.sort_by(&:id)[0]
product1 = Product.all.sort_by(&:id)[1]
product2 = Product.all.sort_by(&:id)[2]
product3 = Product.all.sort_by(&:id)[3]
product4 = Product.all.sort_by(&:id)[4]
product5 = Product.all.sort_by(&:id)[5]

Review.create!([{user: jen, product: product0, title: 'LG OLEDB8P series review', content: "For people who want the best picture they can afford, stretching the budget to get LG's B8 OLED is pretty tempting. It has image quality that's basically as good as any other OLED TV, for less. And that picture is still better than any non-OLED TV we've ever reviewed.

In mid-fall 2018, the B8 costs $1,700 for the 55-inch size and $2,600 for the 65 inches. Yes, that can seem like quite a stretch, but relief could be on the way soon. For the last couple of years LG has dropped its OLED TV prices for Black Friday in mid-November. This year I wouldn't be surprised if the 65-inch B8 got down to $2,100... or maybe even less.

If you've been eyeing a new OLED TV recently, maybe you're wondering about the C8, which costs slightly more and has a newer video processor than the B8. Lemme cut to the chase: in my side-by-side comparisons, that processor does help the image a tiny bit, making the C8 ever-so-slightly better than the B8 for image quality, but it's not worth the extra money in my opinion. Both TVs deserve a 10 in image quality, and the B8 is the superior value, so it gets the higher CNET rating overall.

If you're not familiar with OLED TVs, maybe you're wondering why the heck they cost so much more than LCD-based TVs. My favorite LCD so far, the TCL 6 series, costs less than half as much and has an excellent picture, while higher-end sets like the Vizio P series Quantum and Sony X900F are still hundreds less than the B8. The short answer is that if you want the best picture, OLED is worth it."},
{user: tim, product: product1, title: 'TCL 6 series (2018 Roku TV) review', content: "More than a year after I first reviewed it, the TCL 6 series is still the best TV for the money you can buy. No TV in its price range can beat it, and that includes new 2019 models like the Vizio M8 series I recently reviewed. 

At this point the 6 series is heavily discounted from its initial price, making it a better value than ever. The 65-inch model regularly gets down to $700, and the 55-inch version down to just $500. Even the massive 75-inch version of the 6 series is a bargain at $1,400. Those prices might be different by the time you read this, however. 
I can say the 6 series is the best because I've reviewed almost all of its closest competitors, including the 2019 M8 and Samsung Q70. I also compared it to a bunch of 2018 TVs, including the Vizio M-Series, Vizio P-Series, the Sony X900F and the Samsung Q8. All five offer similar image quality overall -- in a word, excellent, and each scored an 8 for picture quality -- so TV shoppers who want the best TV for the buck should gravitate to the cheapest. And that's the TCL.

Of course you could pay more for a better picture. LG's B8 OLED TV and Vizio's P-Series Quantum earned a 10 and a 9, respectively, in overall image quality, and both significantly outperform any of those TVs. If you can afford either one and relish image quality, they're worth considering. And if you can wait, there's more new 2019 TVs available now, but you'll have to wait until fall 2019, when TV prices bottom out, if you want the best deal. Speaking of waiting, TCL has yet to announce a 2019 successor to the 6 series, but we expect that to happen later this summer."},
{user: tim, product: product2, title: 'Interested in a new TV? Take a look at this review', content: "It's tough to improve the picture quality of OLED TVs, but LG did it again. Just barely.

LG's 2019 C9 OLED TV is the best-performing TV I've ever tested at CNET. In 2018 I said the same thing about the C8 and in 2017 I said the same thing about the C7. Year after year, TVs based on organic light-emitting diode tech deliver the best picture quality you can buy, and the C series showcases LG's best efforts to perfect it.

Granted, the differences in image quality between the new C9 and last year's sets are tiny -- arguably better HDR, a hair more effective processing and milliseconds-quicker gaming lag -- but still enough to propel it to technical superiority. For most buyers, however, those differences won't be worth the steeper price of the C9 compared to the 2018 models, including my current Editors' Choice B8.
In my side-by-side comparison tests, the C9, C8 and B8 all outperformed the best LCD TVs I had on-hand, but the 2019 TV season is just getting warmed up. I have yet to test any 2019 Samsung, Sony or Vizio TVs, including Sony's own OLED models. Any of their flagship sets could conceivably upset the C9 and take the crown, and the LG B9, which lacks the video processing chops of the C9, could once again deliver the best OLED TV value when it debuts later this summer. And as usual, expect big price cuts on all TVs starting this fall.

In the meantime, the OLED C9 sets another staggeringly high bar for image quality. Once again, it's up to the rest of the TV market to try to reach it."},
{user: zack, product: product4, title: 'TCL S425 series (2019 Roku TV) review', content: "China-based TCL is selling TVs hand over fist, taking market share from Vizio and other big TV brands in the US. It has grown 60 percent in each of the last two years, according to market research firm NPD, and its Roku TVs continue to dominate Amazon's best-seller lists.

At CNET our favorite TCL is the 6 series, with the best picture quality for the money of any TV we've tested. But cheaper models, namely the TCL 3 and 4 series reviewed here, are the ones that remain the most popular.

Let's get one thing out of the way first: Their picture quality is mediocre. They can't compete with more expensive sets for black level performance, contrast or pop. If you want a home theater-worthy image in a budget set, start with the Vizio E series -- just keep in mind that it's not available in sizes under 43 inches.

On the other hand, mediocre might be good enough for you, especially if you're buying a smaller set for secondary viewing or you just want the cheapest smart TV you can get. As long as you don't expect too much, you might be perfectly satisfied with a TCL 3 or 4 series, especially for the price. And if nothing else, I predict you'll like its built-in Roku."}])

ProductComment.create([{product: product0, user: john, text: 'Awesome product. Really worth it!'},
{product: product0, user: alice, text: 'Love the sound quality!'},
{product: product1, user: rose, text: 'This is shit, I want my money back! The TV just went off and I think is broken'},
{product: product1, user: alice, text: 'anyone knows if exists a 45" version?'},
{product: product5, user: john, text: 'The price is high but the quality is high too. I use it to play with my Playstation and the resolution is great! I recommend it!'}])