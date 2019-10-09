
User.create!([{email: 'cmramseyer@gmail.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'tim@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'zack@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'jen@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_john@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_alice@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'user_rose@shopdemo.com', password: 'Scranton2005', password_confirmation: 'Scranton2005'},
{email: 'linkedin@shopdemo.com', password: 'linkedin', password_confirmation: 'linkedin'}])

carlos = User.find_by_email('cmramseyer@gmail.com')
tim = User.find_by_email('tim@shopdemo.com')
zack = User.find_by_email('zack@shopdemo.com')
jen = User.find_by_email('jen@shopdemo.com')
john = User.find_by_email('user_john@shopdemo.com')
alice = User.find_by_email('user_alice@shopdemo.com')
rose = User.find_by_email('user_rose@shopdemo.com')

Category.create!([{name: 'TV', icon_name: 'fa-tv'}, {name: 'Monitor', icon_name: 'fa-desktop'}, {name: 'Smartphone', icon_name: 'fa-mobile-alt'}, {name: 'Laptop', icon_name: 'fa-laptop'}, {name: 'PC Accessories', icon_name: 'fa-keyboard'}])

category_tv = Category.find_by_name("TV")
category_monitor = Category.find_by_name("Monitor")
category_smartphone = Category.find_by_name("Smartphone")
category_laptop = Category.find_by_name("Laptop")
category_pc_accessories = Category.find_by_name("PC Accessories")

Product.create!([{category: category_tv, name: 'LG OLEDB8P', description: "OLED TVs are the picture quality kings, but they're not cheap. The TVs' OLED displays use organic light-emitting diode technology to deliver brightness and contrast and viewing angles that no LCD TV (or QLED) can match. Even in mid-2019, this OLED TV from 2018 is still the one to buy. With image quality very close to the 2019 C9 (below) and a price that's hundreds less, the B8 has aged beautifully. That said, we expect the 2019 B9 (also below) to fall in price soon, so the B8's place at the top of this list won't last forever.", price: 1500, brand: 'LG' },
{category: category_tv, name: 'TCL 6', description: "No TV I've ever tested offers this much picture quality for this little cash. Another holdover from 2018, the 6-Series is still widely available at closeout prices because the new 2019 version is coming soon. And it's a steal. With full-array local dimming, its picture runs circles around just about any other TV at this price, and its Roku TV operating system is our hands-down favorite.", price: 1349.99, brand: 'TCL'},
{category: category_tv, name: 'LG OLEDC9P', description: "What's that you say? You just want the best, money no object? Here you go. In my side-by-side tests the C9 is the best TV I've ever reviewed, barely beating the 2018 models like the B8 (above), but the B8 is a superior value -- almost as good and much less expensive. This 2019 OLED TV also has all the HDMI 2.1 future-proofing that some high-end buyers, particularly gamers, desire.", price: 1899.5, brand: 'LG'},
{category: category_tv, name: 'Vizio M8 Quantum', description: "Aside from the TCL 6-Series above, no TV offers this much picture for this little cash. In my comparisons, the Vizio did show superior HDR color to the TCL, but the TCL won in other areas, in particular brightness. I'd still recommend the TCL to most buyers because of its superior Roku smart TV system, but the Vizio is still an excellent choice. Just make sure you're getting the M8, not the M7. And stay tuned for upcoming reviews of Vizio's other 2019 models.", price: 890, brand: 'Vizio'},
{category: category_tv, name: 'TCL 4', description: "Roku is our favorite platform for streaming apps like Netflix, and it's even better baked into the TV. This TCL 4-Series can't beat any of the models above on image quality -- its 4K resolution and HDR compatibility don't do anything to help the picture -- but it's perfectly fine for most people, especially at this price.", price: 950, brand: 'TCL'},
{category: category_tv, name: 'Samsung Q70R', description: "Samsung's QLED TVs are basically fancy LCDs -- don't confuse them with OLEDs. The Q70R has an excellent picture and plenty of Samsung design and features goodies for a price that's relatively affordable, albeit not exactly 'budget'. If you're not interested in a TCL or Vizio and don't want to splurge for an OLED, the Q70 is an excellent choice.", price: 2150, brand: 'Samsung'},
{category: category_laptop, name: 'HP Spectre x360 (2019)', description: "HP's stylish 13-inch x360 is ready to take you from meeting to meeting with a flight in between.", price: 900, brand: 'HP'},
{category: category_laptop, name: 'Apple MacBook Pro with Touch Bar (15-inch)', description: "Apple's top 15-inch laptop gets major internal upgrades.", price: 2200, brand: 'Apple'},
{category: category_laptop, name: 'Dell XPS 13', description: "We've finally run out of complaints.", price: 2499, brand: 'Dell'},
{category: category_laptop, name: 'Apple MacBook Air (2018)', description: "Though its more expensive than the last-gen Air, it's better in almost every way.", price: 1100, brand: "Apple"},
{category: category_smartphone, name: 'Apple iPhone 11', description: "New cameras, longer battery life, Night Mode, a goofy selfie feature and a price drop. That's a respectable upgrade list.", price: 699, brand: 'Apple'},
{category: category_smartphone, name: 'Samsung Galaxy Note 10 Plus', description: "How the refined, feature-packed Note 10 Plus closes the gap with rival phones.", price: 1100, brand: 'Samsung'},
{category: category_smartphone, name: 'Huawei P30 Pro', description: "The Huawei P30 Pro's photo skills rule the phone world.", price: 690, brand: 'Huawei'},
{category: category_smartphone, name: "Motorola Moto G7", description: "A $300 phone shouldn't be this good.", price: 218, brand: 'Motorola'},
{category: category_pc_accessories, name: "Sony WH-1000XM3 Headphone", description: "The third iteration of the WH-1000X is more comfortable, sounds slightly better and features even better noise-canceling performance along with USB-C charging.", price: 348, brand: "Sony"},
{category: category_pc_accessories, name: 'Apple Airpods 2019', description: "Those looking for a major AirPods upgrade, particularly to their sound and design, will have to wait, but the changes do enhance an already excellent truly wireless headphone.", price: 144, brand: "Apple"},
{category: category_pc_accessories, name: "Asus RT-AC68U Dual-band Wireless-AC1900 Gigabit Router", description: "Looking for a Wi-Fi router that has it all? Asus' latest RT-AC68U will fit the bill.", price: 132, brand: 'Asus'},
{category: category_monitor, name: "ASUS ROG Swift PG279Q", description: 'The best gaming monitor with G-Sync', price: 609, brand: 'Asus'},
{category: category_monitor, name: "Acer Predator XB273K", description: "A quality and value for money 4K and HDR gaming monitor", price: 899.99, brand: 'Acer'},
{category: category_monitor, name: 'BenQ EL2870U', description: "The best budget 4K HDR monitor", price: 299.99, brand: 'BenQ'}
])

product0 = Product.find_by_name("LG OLEDB8P")
product1 = Product.find_by_name("TCL 6")
product2 = Product.find_by_name("LG OLEDC9P")
product3 = Product.find_by_name("Vizio M8 Quantum")
product4 = Product.find_by_name("TCL 4")
product5 = Product.find_by_name("Samsung Q70R")
product6 = Product.find_by_name("HP Spectre x360 (2019)")
product7 = Product.find_by_name("Apple MacBook Pro with Touch Bar (15-inch)")
product8 = Product.find_by_name("Dell XPS 13")
product9 = Product.find_by_name("Apple MacBook Air (2018)")
product10 = Product.find_by_name("Apple iPhone 11")
product11 = Product.find_by_name("Samsung Galaxy Note 10 Plus")
product12 = Product.find_by_name("Huawei P30 Pro")
product13 = Product.find_by_name("Motorola Moto G7")
product14 = Product.find_by_name("Sony WH-1000XM3 Headphone")
product15 = Product.find_by_name("Asus RT-AC68U Dual-band Wireless-AC1900 Gigabit Router")
product16 = Product.find_by_name("Apple Airpods 2019")
product17 = Product.find_by_name("ASUS ROG Swift PG279Q")
product18 = Product.find_by_name("Acer Predator XB273K")
product19 = Product.find_by_name("BenQ EL2870U")


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

On the other hand, mediocre might be good enough for you, especially if you're buying a smaller set for secondary viewing or you just want the cheapest smart TV you can get. As long as you don't expect too much, you might be perfectly satisfied with a TCL 3 or 4 series, especially for the price. And if nothing else, I predict you'll like its built-in Roku."},
{user: tim, product: product6, title: 'Suited up for this review', content: "It's rare that a laptop I've tested made me feel underdressed while using it. Actually, I take that back. I've never felt underdressed while using a laptop until I started using the HP Spectre x360. 

Maybe that's a bit of an exaggeration, but HP's premium two-in-one did make me feel like I should be suited up while I worked or, at the very least, that I should tuck in my shirt. Wrapped in metal with gem-cut edges (as opposed to the all-leather Spectre Folio), the 13.3-inch convertible weighs less than 3 pounds (1.3 kg) and is only 14.5 mm thick, so it barely registers that it's in your bag."},
{user: zack, product: product7, title: 'Apple did it again', content: "On paper, it looked like an impressive, if predictable, set of internal component upgrades. Apple's 13-inch and 15-inch Touch Bar MacBook Pro models would get new eighth-gen Intel processors, more storage and RAM options, a color-temperature-sensing True Tone screen and other tweaks -- all nice improvements over a ho-hum 2017 update. At the same time, the slim unibody aluminum design would remain unchanged since its last design overhaul in late 2016, keeping features both loved (the giant track pad) and not-so-loved (the slim-travel keyboard, the USB-C-only connections). 

If anything, the expensive add-on option for one of Intel's new six-core Core i9 processors would appeal to pro-level users, such as video editors and 3D artists, who may be starting to feel that Apple isn't keeping up with their ever-expanding needs for high-end gear. "},
{user: zack, product: product8, title: 'This is why Dell XPS 13 is my personal laptop', content: "For years, the Dell XPS 13 was one of my go-to recommendations for a general-use slim Windows laptop. But it shared that list with equally good machines from HP, Acer and others. A handful of things kept it from being as universally useful as it should have been. Over the years, the size and weight had fallen behind the competition, and the slim screen bezels led to some unflattering webcam compromises. 
  The 2019 version, however, is another story. 

I had to look long and hard to find anything I didn't like about the 2019 Dell XPS 13. Pressed to come up with a list, I'd say the woven glass fiber palm rest doesn't look or feel as high-end as it should. The white backlight shining through white keys (on the white and rose gold versions) sometimes makes it harder to see the keys, not easier. I originally complained that in order to get a touchscreen model you have to trade up to a 4K display (which is more expensive and not as battery-friendly), but since then, Dell has added a 1,920x,1,080-pixel touchscreen option, so you can cross one more thing off my list."},
{user: tim, product: product9, title: 'You think MacBook is expensive?', content: "Apple's MacBook Air has gotten a much-needed reboot, keeping the name, but changing just about everything else, both outside and in. That means a new 8th-gen Intel Core i5 CPU, more RAM and SSD options, a high-res Retina display, and the move to USB-C Thunderbolt 3 ports. And while it's still called the MacBook Air, this new version might as well be called the 'MacBook Pro Lite', because that's essentially what it is.
  For most of its 10-plus year life, the classic MacBook Air was the default laptop for pretty much everyone, from college students to creative types to startup entrepreneurs. For many years, I called it the single most universally useful laptop you could buy.

But over the years, the competition moved to higher-res displays, thin screen bezels, bigger touchpads, regular component upgrades, and thinner and lighter bodies."},
{user: jen, product: product10, title: "New iPhone is here", content: "When you first hear the names of Apple's new iPhones -- the iPhone 11, iPhone 11 Pro and iPhone 11 Pro Max -- you may have some questions. Where's the iPhone X ($600 at Amazon)? So we're back to regular numbers now? And what makes the iPhone Pro... Pro? Last year's awkwardly named XS, XS Max ($1,099 at Amazon) and XR phones have undergone name overhauls. This year's new phones are sequels to the three we got last year, which is what you really need to know. The names are largely for marketing purposes. (The Apple Watch Series 5, at least, is an uncomplicated progression.)

I started to realize, after a week with all three phones, that they're all the same at heart, with a few key extras in the Pro. There's a far smaller difference between these phones than, say, the iPad and the iPad Pro ($800 at Walmart). In fact, you could say all of these phones are Pro phones."},
{user: zack, product: product11, title: 'Another excelent phone, made by Samsung', content: "Samsung makes excellent phones that check nearly every box of what you'd want in a device: a clear, brilliant screen. Great cameras. Strong battery life. But it's been years since all the individual parts have come together in a way that makes me sit back and say, 'Wow.' The Galaxy Note 10 Plus does that in a way that's eluded Samsung phones since the tragic Galaxy Note 7. 

This isn't just a phone that has it all -- it's a phone I genuinely want to use. The Note 10 Plus is the total package and the best phone Samsung's made in years.

The prismatic Aura Glow color I tested is utterly striking to look at, the features are nearly all best-of-breed and Samsung has even worked to close the gap between its camera tools and camera-centric rivals like the Huawei P30 Pro and Google Pixel 3. The Note 10 Plus also fixes my two major complaints about spring's Galaxy S10 Plus (which is still a great phone): the in-screen fingerprint reader is dramatically more accurate this time around, and the camera's dedicated night mode improves photo quality in low light."},
{user: tim, product: product12, title: 'Looking for a good camera in a phone?', content: "When Huawei first told me about the P30 Pro's ($691 at Amazon) four-rear-camera setup, I didn't believe a word. Then I used it. This phone captures zoom and low-light photos unlike anything I've ever seen from a phone. It blows the Galaxy S10 Plus ($954 at Amazon) and Pixel 3 ($1,178 at Walmart) out of the water and, together with its slick design and awesome battery life, makes the P30 Pro one of the top phones of the year.

Huawei is the second largest phone manufacturer in the world and with the P30 Pro, it's bringing out the big guns to clinch that number one spot.

The rear cameras are certainly the standout features but the beautifully colourful design and vibrant 6.47-inch screen make this a truly excellent handset."},
{user: zack, product: product13, title: "Great phone, low budget.", content: "It's easy to be lured by flagship phones such as the iPhone XS, Pixel 3 or Galaxy S10. Each has a cutting edge design and bounty of features, but they also come with a hefty price. Even Apple and Samsung's more value-oriented phones such as the Galaxy S10E and the iPhone XR will set you back $750. That's why it's undoubtedly impressive that the Motorola Moto G7 ($218 at Walmart) costs only $300. It offers the best balance of design, features and price in pretty much any phone sold today.

The Moto G family of phones has a history of being filled with well-considered necessities stamped with an attractive price. Over the past two years, the Moto G5 Plus ($200 at eBay) and Moto G6 showed us just how nice a budget phone can be. And this year's Moto G7 continues in the same direction with a similar body to the Moto G6 and an increased the battery life, a faster processor and larger display."},
{user: jen, product: product16, title: 'Airpods rocks!', content: "Apple seems to be doing this a lot lately: Taking an already excellent, hugely successful product like the iPhone ($999 at Amazon) -- or in this the case, the AirPods ($144 at Amazon) -- and offering little in the way of external alterations but updating its internals, enhancing the device but not fundamentally changing it.

Such incremental upgrades tend to be a little boring. And on the surface anyway, the new AirPods aren't exciting. However, thanks to those updated components on the inside, including a new H1 chip that supports Bluetooth 5.0, improved audio synchronization and always-on Siri, they're definitely better in small ways that a lot of people will appreciate."},
{user: zack, product: product17, title: "Yes. It's the best monitor.", content: "The Asus ROG Swift PG279Q is the best gaming monitor you can buy right now. It is a 27-inch monitor with a 2560x1440 resolution, which we currently consider the sweet spot for high-end gaming. It offers substantially more pixels than 1080p without being as demanding as a 4K panel, meaning games look sharp at 27 inches but won’t bring a good GPU to its knees. Plus, you can still get higher than 60Hz refresh rates, which isn't possible on the current crop of 4K displays. You can also comfortably run at 100 percent scaling in Windows, something that isn't always desirable with 4K panels.

Like its primary competitor, the Acer Predator XB271HU, the PG279Q is an IPS panel with a refresh rate that can be overclocked up to 165Hz. (The difference between 144Hz and 165Hz is mostly negligible though.) Inputs include DisplayPort 1.2a as well as HDMI 1.4 (one of each), a nice addition over our previous best monitor pick. Both displays also feature Nvidia's G-Sync technology for variable refresh rates, assuming you're using an Nvidia GPU. If you're an AMD user, however, you won't benefit from G-Sync and should consider a FreeSync monitor instead. Our pick for that is below. 

The biggest drawback to such a fine monitor, of course, is the price. The PG279Q can be found for less than $800/£700, but not by much. Having said that, we consider a monitor an investment. Don’t buy something cheap you’ll want to replace in two years. Buy a great monitor that will still be going strong half a decade from now. There are 144Hz IPS monitors similar to Asus’s offering, only with FreeSync instead of G-Sync, but the Asus ROG Swift PG279Q is the best choice and worth every dollar."},
{user: jen, product: product18, title: "Acer and Predator series is back", content: "This monitor is a relative of the Acer Predator X27, which previously sat on this list. However, the newer XB273K bumps it off as it offers almost the same excellence but for even better value.  It gives away only a slight decrease in HDR quality and but otherwise matches the X27 punch for punch. Plus its so much cheaper. Almost half the price (looking at retail prices).

The XB273K bags you a terrific panel with exquisite image quality and, despite the apparent lesser HDR capabilities, wonderful colours, contrasts and depths to games too. G-Sync is present to offer stable pictures and smoothness in faster games, the refresh rate and response times back this up by being speedy too, and there's a solid range of ports available to you no matter what gear you're packing. It might be a little on the dear side still but the value is undeniable. And, just in case, you may see it listed as the XB3 or XB273KP depending on the shop and where you are in the world."},
{user: tim, product: product19, title: "Good choice for home PC", content: "When you're building a PC, it's tempting to invest all your resources into the guts of the machine. You want a system that can handle 4K graphics, with all the in-game settings ticked all the way up. But equally important is the monitor needed to display your favorite games in 4K HDR glory. The BenQ EL2870U, as its name suggests, is a 28-inch gaming monitor that won't totally break the bank. 

Although it is constrained to the limited viewing angles of its TN panel, it more than makes up for this concession in other areas. For instance, its native response time is a blistering 1ms. Meanwhile, unlike other monitors in its class, it touts a pair of integrated 2W speakers, perfect for late nights spent watching dumb videos on YouTube with your IRL best buds. (Hey, it's not just a monitor for gaming!) Perhaps best of all, the BenQ EL2870U is graced with its own 3.5mm headphone jack, so you don't have to waste time scouring the area for a cable long enough to reach your motherboard.

Lastly, the BenQ EL2870U features a hard-wired HDR button for toggling on and off high-dynamic range. Because sometimes, we'll admit, it's more trouble than it's worth taking a screenshot in Windows with HDR enabled. And since it regularly goes on sale for less than half a grand, we're not too bothered by the fact that it foregoes Nvidia G-Sync in favor of AMD FreeSync."}])


ProductComment.create([{product: product0, user: john, text: 'Awesome product. Really worth it!'},
{product: product0, user: alice, text: 'Love the sound quality!'},
{product: product1, user: rose, text: 'This is shit, I want my money back! The TV just went off and I think is broken'},
{product: product1, user: alice, text: 'anyone knows if exists a 45" version?'},
{product: product5, user: john, text: 'The price is high but the quality is high too. I use it to play with my Playstation and the resolution is great! I recommend it!'},
{product: product6, user: john, text: 'My laptop. Love it!'},
{product: product6, user: rose, text: 'Are there in stock?'},
{product: product7, user: john, text: 'Too expensive. Fuck you Apple'},
{product: product7, user: tim, text: 'I am going to write a review one day. Soon!'},
{product: product8, user: alice, text: 'Dell 4x4. Resist everything!'},
{product: product9, user: alice, text: 'I like the new design!'},
{product: product10, user: alice, text: 'Another model, again?'},
{product: product10, user: john, text: 'I am OK with my iPhone 8. Why should I have to waste money?'},
{product: product11, user: rose, text: "I don't like it, too big for my hands"},
{product: product14, user: rose, text: 'Sounds great!'},
{product: product17, user: john, text: 'Awesome experience playing WoW'},
{product: product18, user: tim, text: 'Great for movies and gaming!'},
{product: product19, user: rose, text: 'BenQ surprised me. High quality. I recommend it!'}
])