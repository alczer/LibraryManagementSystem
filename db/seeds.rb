# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Item.delete_all
Author.delete_all
ItemAuthor.delete_all
Publisher.delete_all
Category.delete_all
ItemCategory.delete_all

pub1 = Publisher.create!(name: 'Pascal')
pub2 = Publisher.create!(name: 'StudioEMKA')
pub3 = Publisher.create!(name: 'Prószyński i S-ka')
pub4 = Publisher.create!(name: 'Karolina Maria Watras')
pub5 = Publisher.create!(name: 'Bloomsbury Publishing')
pub6 = Publisher.create!(name: 'Media Rodzina')
pub7 = Publisher.create!(name: 'Rebis')


hari = Item.create!(name: 'Harry Potter i filozofia. Przewodnik po Hogwarcie dla Mugoli', description: 'Świat wcale nie dzieli się na dobrych ludzi i śmierciożerców, bo wszyscy mamy w sobie tyle samo dobra, co zła. Tylko od nas zależy, jaką drogą pójdziemy
- Redakcja William Irwin, Gregory Bassham

Klucz do zaszyfrowanego świata filozofii

Opowieści o Harrym Potterze opanowały serca i umysły milionów dzieciaków na całym świecie. Nie oszukujmy się – również wielu dorosłych dało się zaczarować książkom J.K. Rowling. Dlaczego? Może to wspomnienie dzieciństwa, a może ta wszechobecna aura niezwykłości: ukryte komnaty, duchy, magiczne przedmioty kontrolujące umysły, mroczne tajemnice z przeszłości, wilkołaki, myślodsiewnia, a nawet kamień filozoficzny… Albo fakt, że kiedy wczytać się dokładnie, powieść ta ukazuje nam wielkie bogactwo bardzo kontrowersyjnych treści.
Przysięgam uroczyście, że knuję coś niedobrego.

Seria książek o młodocianym czarodzieju od samego początku budziła niezwykle silne emocje. Oskarżana o szerzenie magii i okultyzmu, była nawet ostentacyjnie palona, tak jak zakazane księgi w czasach Wielkiej Inkwizycji. Niektórzy uwierzyli w wykreowaną przez autorkę rzeczywistość, jeszcze inni uznali, że to po prostu świetna rozrywka. Jeśli Ty również jesteś fanem Harry”ego Pottera, jeśli ta magiczna rzeczywistość wciąż Cię pociąga i nęci, chcemy pokazać coś, co prawdopodobnie przeoczyłeś w trakcie lektury.

Zobacz świat Harry”ego z innej perspektywy. Odnajdź przekaz ukryty między wierszami. Niektóre z tych zagadnień czy idei wydadzą Ci się rewolucyjne, inne możesz uznać za niedorzeczne, jeszcze inne zafascynują Cię swoim geniuszem. Jedno jest pewne – powtórnie przeżyjesz niezwykłą przygodę, zanurzając się jeszcze głębiej w tę krainę czarów…
Komnata Tajemnic została otwarta!!!', isbn: 9788373331270, language: 'polski',state: 'bardzo dobry', date_pub: '2007-01-01', item_img_file_name: 'harripotta_img.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 59705, item_img_updated_at: '2007-01-01 10:00:00', publisher: pub1)
chroom = Item.create!(name: 'Esther the Wonder Pig, czyli jak dwóch facetów pokochało świnię', description: 'Prawdziwa historia najsłynniejszej świnki na świecie!
Steve i Derek zawsze kochali zwierzęta. Ich dom trzeszczał w szwach od przygarniętych psów i kotów. Kiedy więc Steve otrzymał propozycję zaopiekowania się jeszcze jedną biedną sierotką – świnką miniaturką – nie walczyli ze sobą zbyt długo. Wkrótce jednak odkryli, że ktoś wywinął im niezły numer i że ich mała chrumkająca córeczka zmienia się w pełnowymiarową, ważącą niemal trzysta kilogramów nastolatkę. A to oznaczało, że muszą poważnie przeorganizować swoje życie.
Za sprawą Esther Steve i Derek nie tylko przestali jeść bekon (za którym przepadali). Obaj zostali wegetarianami, potem weganami, ale czuli, że coś jeszcze zostało im zrobienia. Kiedy więc Esther przestała się mieścić w wannie i na kanapie, kupili farmę, by ich świnka miała gdzie ryć i się tarzać – a następnie założyli schronisko dla zwierząt gospodarskich, znane dziś pod nazwą Happily Ever Esther (Długo i Szczęśliwie z Esther). Ta wzruszająca i zabawna historia pokazuje, jak dwóch zwykłych chłopaków z przerażonych rodziców zastępczych rezolutnej świni stało się obrońcami praw zwierząt. ', isbn: 1118379611270, language: 'polski',state: 'nowa', date_pub: '2007-01-01', item_img_file_name: 'chroom_img.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 97016, item_img_updated_at: '2009-01-01 10:00:00', publisher: pub2)
szostaofiara = Item.create!(name: "Szósta Ofiara", isbn: 9788379611270, language: 'polski', state: 'bardzo zły', date_pub: '2010-08-06', item_img_file_name:'im1.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 82610, item_img_updated_at: '2009-01-01 10:00:00', publisher: pub3, description: "Przerażający kryminał bestsellerowego amerykańskiego autora, Gregga Olsena.

Sieć zatok wdzierających się w wybrzeże Ameryki staje się miejscem pochówku młodych niewinnych kobiet. Policja znajduje ciało za ciałem. Ofiary nie miały ze sobą nic wspólnego prócz straszliwych męczarni, jakimi zakończyło się ich życie. Ktoś wytrwale je tropił, a potem porywał i torturował – zdeprawowany zabójca obdarzony sprytem, któremu dorównuje jedynie jego okrucieństwo i żądza krwi. Ale śmiertelna seria dopiero się zaczęła, a kolejne zabójstwo będzie najbardziej szokujące ze wszystkich… ")
otworzoczymarianno = Item.create!(name: "Otwórz oczy, Marianno",isbn: 9788394777005, language: 'polski',state: 'dobry',date_pub: '2011-11-06',item_img_file_name:'im2.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 46514, item_img_updated_at: '2010-01-01 10:00:00', publisher: pub4,description: "Kasia, trzydziestotrzyletnia kobieta, opuszcza szpital psychiatryczny i po raz kolejny w swoim życiu próbuje rozpocząć wszystko od nowa. Choroba afektywna-dwubiegunowa, z którą zmaga się od wielu lat, powoduje, że jej życie wciąż przypomina sinusoidę i nie pozwala na ustatkowanie i spełnianie marzeń. Kobieta obiecuje sobie, że tym razem nie pozwoli na to, by kolejny rzut manii, zamieniony w falę depresji zrujnowały jej zdrowie i plany. Przyjmuje nowy lek, którego działanie pozwala jej myśleć o przyszłości w nieco jaśniejszych barwach. Wraca do Warszawy i po pierwszych przykrych wydarzeniach udaje jej się znaleźć pracę i życzliwych ludzi, którzy wyciągają do niej pomocną dłoń. Jednak mimo tych nadziei i dobrego samopoczucia, jej spokój zostaje nagle zburzony przez bardzo niepokojące przywidzenia, a gdy na jej drodze staje przystojny książę z krwi i kości, wszystko zaczyna komplikować się jeszcze bardziej. Kasia staje przed wyzwaniem, jakim jest poznanie siebie, swojej przykrej przeszłości, a jednocześnie pogodzenie się z tym, kim naprawdę jest. Losy kobiety splatają się z innymi osobami, które także zmagają się z licznymi problemami i dzięki niej powoli zaczynają odkrywać swoją tożsamość. ")

harrypotter1and = Item.create!(name: 'Harry Potter and the Philosopher\'s Stone',isbn: 0,language: 'angielski',state: 'bardzo dobry',date_pub: '2011-11-06',item_img_file_name:'im3.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 97850, item_img_updated_at: '20010-01-01 10:00:00',publisher: pub5, description: 'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\'s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin! These new editions of the classic and internationally bestselling, multi-award-winning series feature instantly pick-up-able new jackets by Jonny Duddle, with huge child appeal, to bring Harry Potter to the next generation of readers. It\'s time to PASS THE MAGIC ON ... ')
harrypotter4pl = Item.create!(name: 'Harry Potter i Czara Ognia', isbn: 9788380082175, language: 'polski', state: 'zły', date_pub: '2011-11-06',item_img_file_name:'im4.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 95731, item_img_updated_at: '2010-01-01 10:00:00',publisher: pub6, description: "W tym roku w Szkole Magii i Czarodziejstwa Hogwart rozegra się Turniej Trójmagiczny, na który przybędą uczniowie z Bułgarii i Francjii. Zgodnie z prastarymi regułami w turnieju uczestniczyć ma trzech uczniów - reprezentantów każdej ze szkół, wybranych przez Czarę Ognia. W tajemniczych i niewyjaśnionych okolicznościach wybranych zostaje czterech.
Co z tego wyniknie dla Harry'ego, jego przyjaciół i całego świata czarodziejów, dowiecie się z lektury czwartego tomu przygód nastoletniego czarodzieja.
Nowe wydanie książki o najsłynniejszym czarodzieju świata różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.")
harrypotter2pl = Item.create!(name: 'Harry Potter i Komnata Tajemnic', isbn: 9788380082137,language: 'polski',state: 'dobry', date_pub: '2014-11-06',item_img_file_name:'im5.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 95377, item_img_updated_at: '2010-01-01 10:00:00',publisher: pub6,description: 'Harry po pełnym przygód roku w Hogwarcie spędza nudne wakacje u Dursleyów i z utęsknieniem wyczekuje powrotu do szkoły. Sprawy jednak znacznie się komplikują, gdy pewnego dnia odwiedza go tajemniczy przybysz i ostrzega przed… powrotem do Szkoły Magii i Czarodziejstwa, gdzie ma dojść do strasznych wydarzeń. Czy Harry posłucha ostrzeżenia? Co złego ma się wydarzyć w Hogwarcie? Jakie tajemnice skrywa rodzina Malforya? I najważniejsze – czym jest i gdzie znajduje się tytułowa Komnata Tajemnic?
Nowe wydanie różni się od poprzednich nie tylko okładką, ale i wnętrzem – po raz pierwszy na początku każdego tomu pojawi się mapka Hogwartu i okolic, a początki rozdziałów ozdobione będą specjalnymi gwiazdkami.')

                    sztuka = Item.create!(name: 'Sztuka szczęścia. Poradnik życia',isbn: 9788371209840, language: 'polski', state: 'dobry',date_pub: '2011-09-09',item_img_file_name:'im8.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 57835, item_img_updated_at: '2010-01-01 10:00:00',publisher: pub7, description: 'Książka to efekt szeregu rozmów przeprowadzonych przez amerykańskiego psychiatrię Howarda Cutlera z Jego świątobliwością Dalajlamą, zapis niezwykle interesującego dialogu ludzi z dwóch różnych kręgów kulturowych....')


jakprzestacsiemartwic = Item.create!(name: 'Jak przestać się martwić i zacząć żyć',isbn: 9788385881025, language: 'polski', state: 'dobry',date_pub: '2002-12-10',item_img_file_name:'im6.jpg',item_img_content_type: 'image/jpeg', item_img_file_size: 67753, item_img_updated_at: '2017-01-01 10:00:00',publisher: pub2, description: 'Według autora, zamartwianie się to też nałóg, taki jak palenie papierosów. Można się więc z niego wyleczyć... Nie jest to łatwe, ale udało się już milionom ludzi na całym świecie. Książka zawiera praktyczne wskazówki, jak pozbyć się obaw i lęków, jak znosić krytykę i wyciągać z niej wnioski, jak unikać zmęczenia i wyglądać młodo, jak wydłużyć dzień o godzinę czyli po prostu jak odnaleźć sens życia i jego smak. ' )
szkolaprzetrwania = Item.create!(name: 'Szkoła przetrwania: kultowy poradnik survivalowy', isbn: 9788375137897,language:'polski',state:'bardzo dobry',date_pub: '2013-07-06',item_img_file_name:'im7.png',item_img_content_type: 'image/jpeg', item_img_file_size: 394263, item_img_updated_at: '2010-01-01 10:00:00',publisher: pub1, description: 'Przeżyjesz w najdzikszych warunkach, bo dowiesz się, jak:


* używać narzędzi, które ratują życie
* rozbić obóz w terenie
* rozpalić i podtrzymać ogień
* przygotować, ugotować i przechować jedzenie
* rozpoznać, wytropić i śledzić dziką zwierzynę
* opatrzyć rany jak ratownik medyczny!

Bear Grills - człowiek legenda, znany z kultowego programu Discovery. Przeszedł sito selekcji brytyjskich oddziałów specjalnych, wspiął się na Mount Everest i przetrwał w najbardziej niegościnnych regionach Ziemi

 ')

williamirwin = Author.create!(name: 'William Irwin', date_born: 'jun 6 1958')
greggOlsen = Author.create!(name: 'Gregg Olsen',date_born: 'jan 1 1958')
rowling = Author.create!(name: 'Rowling',date_born: 'jan 1 1968')
steve = Author.create!(name: 'Steve jenkins',date_born: 'jan 6 1968')
derek = Author.create!(name: 'Derek Walter',date_born: 'jan 6 1968')
rozalewanowcz = Author.create!(name: 'Róża Lewanowicz',date_born: 'nov 6 1964')
jkrowling = Author.create!(name: 'Joanne Kathleen Rowling', date_born: 'oct 17 1984')
dalecarneige = Author.create!(name: 'Dale Carnegie',date_born: 'jun 25 1924')
beargrylls = Author.create!(name: 'Bear Grylls', date_born: 'jun 26 1974')
dalaj = Author.create!(name: 'Dalajlama XIV', date_born: 'jun 25 1964')
howardcutler =  Author.create!(name: 'Howard C. Cutler', date_born: 'jun 30 1966')


bio = Category.create!(name: 'Biografia')
fan = Category.create!(name: 'Fantastyka')
opo = Category.create!(name: 'Opowiadania i powieści')
poe = Category.create!(name: 'Poezja')
kr = Category.create!(name: 'Kryminał')
por = Category.create!(name: 'Poradnik')


chroom.item_authors.create!(author: steve)
chroom.item_authors.create!(author: derek)
szostaofiara.item_authors.create!(author: greggOlsen)
hari.item_authors.create!(author: williamirwin)
otworzoczymarianno.item_authors.create!(author: rozalewanowcz)
harrypotter1and.item_authors.create!(author: jkrowling)
harrypotter4pl.item_authors.create!(author: jkrowling)
harrypotter2pl.item_authors.create!(author: jkrowling)
jakprzestacsiemartwic.item_authors.create!(author: dalecarneige)
szkolaprzetrwania.item_authors.create!(author: beargrylls)
sztuka.item_authors.create!(author: dalaj)
sztuka.item_authors.create!(author: howardcutler)


williamirwin.item_authors.create!(item: hari)
greggOlsen.item_authors.create!(item: szostaofiara)
steve.item_authors.create!(item: chroom)
derek.item_authors.create!(item: chroom)
rozalewanowcz.item_authors.create!(item: otworzoczymarianno)
jkrowling.item_authors.create!(item: harrypotter1and)
jkrowling.item_authors.create!(item: harrypotter4pl)
jkrowling.item_authors.create!(item: harrypotter2pl)
dalecarneige.item_authors.create!(item: jakprzestacsiemartwic)
beargrylls.item_authors.create!(item: szkolaprzetrwania)
dalaj.item_authors.create!(item: sztuka)
howardcutler.item_authors.create!(item: sztuka)

hari.item_categories.create!(category: fan)
fan.item_categories.create!(item: hari)
chroom.item_categories.create!(category: bio)
bio.item_categories.create!(item: chroom)
szostaofiara.item_categories.create!(category: kr)
kr.item_categories.create!(item: szostaofiara)
otworzoczymarianno.item_categories.create!(category: opo)
opo.item_categories.create!(item: otworzoczymarianno)
harrypotter1and.item_categories.create!(category: fan)
fan.item_categories.create!(item: harrypotter1and)
harrypotter4pl.item_categories.create!(category: fan)
fan.item_categories.create!(item: harrypotter4pl)
harrypotter2pl.item_categories.create!(category: fan)
fan.item_categories.create!(item: harrypotter2pl)
jakprzestacsiemartwic.item_categories.create!(category: por)
por.item_categories.create!(item: jakprzestacsiemartwic)
szkolaprzetrwania.item_categories.create!(category: por)
por.item_categories.create!(item: szkolaprzetrwania)
sztuka.item_categories.create!(category: por)
por.item_categories.create!(item: sztuka)

