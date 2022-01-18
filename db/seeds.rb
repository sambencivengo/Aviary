# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'nokogiri'
require 'open-uri'
# require 'pry'
require 'mechanize'

puts "🌱 Seeding!"
# WORKING SEED, JSUT MISSING THE PAGE CHANGES

# html = URI.open("https://www.audubon.org/bird-guide")


# el = doc.css("#main").css(".page-#{number}.views-row.columns.tiny-6.medium-4.large-3").css(".bird-card").css(".bird-card-caption")

# if Bird.all.length == 0
#   el.each do |e|
#     common_name = e.css(".common-name.custom-h4").text.strip
#     sci_name = e.css(".scientific-name").css("span").text

#     Bird.create(common_name: common_name, sci_name: "Latin: #{sci_name}")
#   end
# end
# el = doc.css(".view-content.row.space-bottom.double.bird-card-grid-container").css(".page-#{number}.views-row.columns.tiny-6.medium-4.large-3")
# # puts el


# html = URI.open("https://en.wikipedia.org/wiki/List_of_birds_of_North_America")
# doc = Nokogiri::HTML(html)
# link = doc.css("li")
# puts link[139..-118].length


# links = site.search("li")
# link = site.link_with(text: "American Ornithological Society")
# links = site.css('li')
# links= site.links_with(dom_class: "div-col")

# filted_links = links[0..-261]
# filted_links = links[222..300]
# puts filted_links.size

# test_links = links[300..601]
# test_page = links[601].click


# puts test_page.images[0].src
# puts test_page.search("span.binomial").text
# puts test_page.search("h1.firstHeading").text


# PREVIOUS SEED

# mechanize = Mechanize.new
# # page = mechanize.get("https://en.wikipedia.org/wiki/List_of_birds_of_North_America")
# page = mechanize.get("https://en.wikipedia.org/wiki/List_of_birds_of_the_United_States")



# links = page.links.map{|link| link }
# shrunken_links = links[222..-261]
# bird_links = shrunken_links.select {|link| link.text != "edit"}
# puts bird_links.size

# bird_links.each do |bird_link|
#   new_page = bird_link.click
#   common_name = new_page.search("h1.firstHeading").text
#   sci_name = new_page.search("span.binomial").text
#   bird_img = new_page.images[0].src

#   Bird.create(common_name: common_name, sci_name: sci_name, image: bird_img)
# end

# User.create(username: 'sam', email: 'sambencivengo@gmail.com', password: '1', password_confirmation: '1')

# puts "🌱 Seeding finished!"



# NEW SEED

# mechanize = Mechanize.new

# page = mechanize.get('https://avibase.bsc-eoc.org/checklist.jsp?lang=EN&p2=1&list=clements&synlang=&region=US&version=text&lifelist=&highlight=0')

# links = page.links.map{|link| link }

# filtered_links = links[47..-3]

# sample_page = filtered_links[301]
# clicked_sample = sample_page.click
# common_name = clicked_sample.search("h2").text
# sci_name = clicked_sample.search("h4").text
# audio = clicked_sample.search("a.nav-link")[19]
# image = clicked_sample.search("a.nav-link")[18]
# query_common_name = common_name.downcase.split.join('+')


# # links = sample_page.links[0]
# # clicked_page = sample_page.click
# # flickr = clicked_page.links.select{|link| link.text == "Flickr"}.click
# # puts flickr
# # flickr_tab = flickr.click

# # images = flickr_tab.images
# # puts images
# # puts filtered_links
# google_search = mechanize.get("https://www.google.com/search?q=#{query_common_name}")
# puts google_search.images
# puts audio
# puts image

# # puts image_page
# puts common_name
# puts common_name.downcase.split.join('+')

# puts sci_name



# User.create(username: 'sam', email: 'sambencivengo@gmail.com', password: '1', password_confirmation: '1')

us_birds = [
  "wfwduc1",
  "bbwduc",
  "wiwduc1",
  "fuwduc",
  "bahgoo",
  "empgoo",
  "snogoo",
  "rosgoo",
  "gragoo",
  "gwfgoo",
  "lwfgoo",
  "taibeg1",
  "tunbeg1",
  "pifgoo",
  "brant",
  "bargoo",
  "cacgoo1",
  "cangoo",
  "hawgoo",
  "mutswa",
  "blkswa",
  "truswa",
  "tunswa",
  "whoswa",
  "egygoo",
  "rudshe",
  "comshe",
  "musduc",
  "rintea1",
  "wooduc",
  "manduc",
  "baitea",
  "gargan",
  "buwtea",
  "cintea",
  "norsho",
  "gadwal",
  "falduc",
  "eurwig",
  "amewig",
  "layduc",
  "hawduc",
  "spbduc",
  "mallar3",
  "mexduc",
  "ambduc",
  "motduc",
  "whcpin",
  "norpin",
  "gnwtea",
  "recpoc",
  "robpoc1",
  "canvas",
  "redhea",
  "compoc",
  "rinduc",
  "tufduc",
  "gresca",
  "lessca",
  "steeid",
  "speeid",
  "kineid",
  "comeid",
  "harduc",
  "sursco",
  "whwsco2",
  "whwsco1",
  "blksco1",
  "blksco2",
  "lotduc",
  "buffle",
  "comgol",
  "bargol",
  "smew",
  "hoomer",
  "commer",
  "rebmer",
  "masduc",
  "rudduc",
  "placha",
  "helgui",
  "mouqua",
  "norbob",
  "scaqua",
  "elequa",
  "calqua",
  "gamqua",
  "monqua",
  "wiltur",
  "rufgro",
  "saggro",
  "gusgro",
  "dusgro",
  "soogro1",
  "shtgro",
  "grpchi",
  "lepchi",
  "whtpta1",
  "wilpta",
  "rocpta1",
  "sprgro",
  "grypar",
  "golphe",
  "rinphe",
  "kalphe",
  "silphe",
  "compea",
  "redjun",
  "gryfra",
  "blkfra",
  "himsno",
  "blbqua1",
  "japqua",
  "chukar",
  "ercfra",
  "grefla2",
  "leagre",
  "pibgre",
  "horgre",
  "rengre",
  "eargre",
  "wesgre",
  "clagre",
  "rocpig",
  "scnpig1",
  "whcpig2",
  "rebpig1",
  "batpig1",
  "eutdov",
  "ortdov",
  "eucdov",
  "afcdov1",
  "spodov",
  "diadov1",
  "zebdov",
  "incdov",
  "cogdov",
  "rugdov",
  "ruqdov",
  "kwqdov",
  "whtdov",
  "whwdov",
  "zendov",
  "moudov",
  "chbsan",
  "smbani",
  "grbani",
  "greroa",
  "dabcuc1",
  "yebcuc",
  "mancuc",
  "bkbcuc",
  "comcuc",
  "oricuc2",
  "lesnig",
  "comnig",
  "antnig",
  "compau",
  "compoo",
  "chwwid",
  "bucnig",
  "easwpw1",
  "souwpw1",
  "grynig1",
  "blkswi",
  "whcswi",
  "chiswi",
  "vauswi",
  "whtnee",
  "marswi",
  "comswi",
  "fotswi",
  "whtswi",
  "anpswi",
  "grnvie1",
  "gnbman",
  "maghum1",
  "plcsta",
  "amthum1",
  "buthum",
  "luchum",
  "rthhum",
  "bkchum",
  "bahwoo",
  "annhum",
  "coshum",
  "calhum",
  "rufhum",
  "allhum",
  "brthum",
  "brbhum",
  "whehum",
  "xanhum",
  "vichum",
  "berhum",
  "cinhum1",
  "bubhum",
  "ridrai1",
  "kinrai4",
  "clarai11",
  "virrai",
  "corcra",
  "pabcra",
  "sporai",
  "rnwrai1",
  "sora",
  "commoo3",
  "comgal1",
  "eurcoo",
  "hawcoo",
  "y00475",
  "purgal2",
  "azugal1",
  "purswa3",
  "baicra1",
  "yelrai",
  "blkrai",
  "sungre1",
  "limpki",
  "demcra1",
  "sancra",
  "comcra",
  "hoocra1",
  "whocra",
  "dstkne",
  "bkwsti",
  "bknsti",
  "ameavo",
  "euroys1",
  "ameoys",
  "blkoys",
  "bkbplo",
  "eugplo",
  "amgplo",
  "pagplo",
  "norlap",
  "soulap1",
  "lesplo",
  "grsplo",
  "colplo1",
  "snoplo5",
  "wilplo",
  "corplo",
  "semplo",
  "pipplo",
  "lirplo",
  "killde",
  "mouplo",
  "eurdot",
  "norjac",
  "uplsan",
  "brtcur",
  "whimbr",
  "litcur",
  "lobcur",
  "faecur",
  "eurcur",
  "batgod",
  "bktgod",
  "hudgod",
  "margod",
  "rudtur",
  "blktur",
  "grekno",
  "redkno",
  "surfbi",
  "ruff",
  "brbsan",
  "shtsan",
  "stisan",
  "cursan",
  "temsti",
  "lotsti",
  "spbsan1",
  "rensti",
  "sander",
  "dunlin",
  "rocsan",
  "pursan",
  "baisan",
  "litsti",
  "leasan",
  "whrsan",
  "bubsan",
  "pecsan",
  "semsan",
  "wessan",
  "shbdow",
  "lobdow",
  "jacsni",
  "eurwoo",
  "amewoo",
  "solsni1",
  "comsni",
  "wilsni1",
  "pitsni",
  "tersan",
  "wilpha",
  "renpha",
  "redpha1",
  "comsan",
  "sposan",
  "grnsan",
  "solsan",
  "gyttat1",
  "wantat1",
  "spored",
  "greyel",
  "comgre",
  "willet1",
  "lesyel",
  "marsan",
  "woosan",
  "oripra",
  "gresku1",
  "sopsku1",
  "pomjae",
  "parjae",
  "lotjae",
  "doveki",
  "commur",
  "thbmur",
  "razorb",
  "blkgui",
  "piggui",
  "lobmur",
  "marmur",
  "kitmur",
  "xanmur2",
  "xanmur1",
  "cramur",
  "ancmur",
  "casauk",
  "parauk",
  "leaauk",
  "whiauk",
  "creauk",
  "rhiauk",
  "atlpuf",
  "horpuf",
  "tufpuf",
  "swtgul1",
  "bklkit",
  "relkit",
  "ivogul",
  "sabgul",
  "bongul",
  "grhgul",
  "bkhgul",
  "litgul",
  "rosgul",
  "laugul",
  "fragul",
  "gbhgul2",
  "belgul",
  "bktgul",
  "heegul",
  "mewgul",
  "mewgul2",
  "ribgul",
  "wesgul",
  "yefgul",
  "calgul",
  "hergul",
  "yelgul1",
  "y00478",
  "lbbgul",
  "slbgul",
  "glwgul",
  "glagul",
  "gbbgul",
  "kelgul",
  "brnnod",
  "blknod",
  "bugnod",
  "whiter",
  "sooter1",
  "gybter1",
  "briter1",
  "aleter1",
  "leater1",
  "labter1",
  "gubter1",
  "caster1",
  "incter1",
  "blkter",
  "whwter",
  "whiter2",
  "roster",
  "comter",
  "arcter",
  "forter",
  "royter1",
  "grcter1",
  "santer1",
  "eleter1",
  "blkski",
  "whttro",
  "rebtro",
  "rettro",
  "retloo",
  "arcloo",
  "pacloo",
  "comloo",
  "yebloo",
  "yenalb",
  "whcalb1",
  "salalb1",
  "shyalb2",
  "bkbalb",
  "limalb1",
  "wanalb",
  "layalb",
  "bkfalb",
  "shtalb",
  "wispet",
  "wfspet",
  "bbspet1",
  "bripet",
  "ftspet",
  "rispet1",
  "lcspet",
  "leastp5",
  "swspet",
  "asspet",
  "barpet",
  "wrspet",
  "bkspet",
  "trspet",
  "lsspet",
  "norgip1",
  "norful",
  "grwpet2",
  "kerpet",
  "tripet1",
  "herpet2",
  "murpet",
  "solpet1",
  "madpet",
  "feapet1",
  "motpet",
  "berpet",
  "bkcpet",
  "jufpet",
  "hawpet1",
  "whnpet",
  "bonpet",
  "bkwpet",
  "coopet",
  "stepet",
  "bulpet",
  "joupet",
  "tahpet1",
  "whcpet1",
  "parpet1",
  "strshe",
  "corshe",
  "cavshe1",
  "pifshe",
  "flfshe",
  "greshe",
  "wetshe",
  "bulshe",
  "sooshe",
  "shtshe",
  "chrshe",
  "manshe",
  "towshe2",
  "bkvshe",
  "litshe1",
  "audshe",
  "wonsto1",
  "blnsto1",
  "jabiru",
  "woosto",
  "lesfri",
  "magfri",
  "grefri",
  "masboo",
  "nazboo1",
  "bfoboo",
  "brnboo",
  "refboo",
  "norgan",
  "anhing",
  "bracor",
  "refcor",
  "pelcor",
  "grecor",
  "doccor",
  "neocor",
  "amwpel",
  "brnpel",
  "pibpel1",
  "amebit",
  "grebit1",
  "yelbit",
  "leabit",
  "btther1",
  "grbher3",
  "graher1",
  "greegr",
  "integr",
  "chiegr",
  "litegr",
  "werher",
  "snoegr",
  "libher",
  "triher",
  "redegr",
  "categr",
  "chpher1",
  "grnher",
  "bcnher",
  "ycnher",
  "whiibi",
  "gloibi",
  "whfibi",
  "sacibi2",
  "rosspo1",
  "calcon",
  "blkvul",
  "turvul",
  "osprey",
  "whtkit",
  "hobkit",
  "swtkit",
  "goleag",
  "snakit",
  "dotkit1",
  "miskit",
  "wemhar1",
  "norhar1",
  "norhar2",
  "grfhaw1",
  "eurspa1",
  "shshaw",
  "coohaw",
  "norgos",
  "blakit1",
  "baleag",
  "whteag",
  "stseag",
  "crahaw",
  "comblh1",
  "grbhaw1",
  "roahaw",
  "hrshaw",
  "whthaw",
  "rebhaw2",
  "gryhaw2",
  "reshaw",
  "brwhaw",
  "hawhaw",
  "shthaw",
  "swahaw",
  "zothaw",
  "rethaw",
  "rolhaw",
  "ferhaw",
  "combuz1",
  "lolbuz1",
  "brnowl",
  "orsowl",
  "flaowl",
  "whsowl1",
  "wesowl1",
  "easowl1",
  "grhowl",
  "snoowl1",
  "nohowl",
  "nopowl",
  "fepowl",
  "elfowl",
  "burowl",
  "motowl",
  "spoowl",
  "brdowl",
  "grgowl",
  "loeowl",
  "styowl1",
  "sheowl",
  "borowl",
  "nswowl",
  "norboo1",
  "earque",
  "eletro",
  "hoopoe",
  "rinkin1",
  "belkin1",
  "amakin1",
  "grnkin",
  "eurwry",
  "wilsap",
  "yebsap",
  "rensap",
  "rebsap",
  "lewwoo",
  "rehwoo",
  "acowoo",
  "gilwoo",
  "gofwoo",
  "rebwoo",
  "attwoo1",
  "bkbwoo",
  "grswoo",
  "dowwoo",
  "nutwoo",
  "labwoo",
  "recwoo",
  "haiwoo",
  "whhwoo",
  "ariwoo",
  "ivbwoo",
  "pilwoo",
  "norfli",
  "gilfli",
  "coffal1",
  "y00678",
  "eurkes",
  "amekes",
  "reffal1",
  "merlin",
  "eurhob",
  "aplfal",
  "batfal1",
  "gyrfal",
  "perfal",
  "prafal",
  "tancoc1",
  "succoc",
  "saccoc",
  "whicoc1",
  "cockat",
  "rorpar",
  "plhpar1",
  "budger",
  "peflov",
  "fislov1",
  "yeclov",
  "monpar",
  "whwpar",
  "yecpar",
  "schpar1",
  "blhpar1",
  "recpar",
  "licpar",
  "relpar",
  "yehpar",
  "ywcpar",
  "bufpar",
  "whfpar1",
  "meapar",
  "orwpar",
  "burpar",
  "thbpar",
  "carpar",
  "duhpar",
  "bkhpar",
  "sunpar1",
  "baymac",
  "chfmac1",
  "bucpar",
  "grnpar",
  "crfpar",
  "scfpar1",
  "mitpar",
  "rempar",
  "whepar2",
  "mastit1",
  "grcbec1",
  "rotbec",
  "nobtyr",
  "greela",
  "smbela1",
  "whcela1",
  "tuffly",
  "olsfly",
  "grepew",
  "wewpew",
  "eawpew",
  "cubpew1",
  "yebfly",
  "acafly",
  "aldfly",
  "wilfly",
  "leafly",
  "hamfly",
  "gryfly",
  "dusfly",
  "pinfly1",
  "pasfly",
  "corfly",
  "bubfly",
  "blkpho",
  "easpho",
  "saypho",
  "verfly",
  "ducfly",
  "astfly",
  "nutfly",
  "grcfly",
  "bncfly",
  "lasfly",
  "grekis",
  "socfly1",
  "subfly",
  "pirfly1",
  "varfly",
  "croslf1",
  "trokin",
  "coukin",
  "caskin",
  "thbkin",
  "weskin",
  "easkin",
  "grykin",
  "logkin",
  "sctfly",
  "fotfly",
  "bkcvir1",
  "whevir",
  "thbvir",
  "cubvir1",
  "belvir",
  "gryvir",
  "hutvir",
  "yetvir",
  "casvir",
  "buhvir",
  "plsvir",
  "phivir",
  "warvir",
  "reevir1",
  "yegvir",
  "bkwvir",
  "yucvir",
  "elepai",
  "elepai5",
  "elepai4",
  "rebshr1",
  "brnshr",
  "logshr",
  "norshr4",
  "gryjay",
  "btmjay",
  "brnjay",
  "grnjay",
  "pinjay",
  "stejay",
  "blujay",
  "flsjay",
  "issjay",
  "cowscj1",
  "wooscj2",
  "mexjay4",
  "bkbmag1",
  "yebmag",
  "clanut",
  "eurjac",
  "houcro1",
  "amecro",
  "tamcro",
  "fiscro",
  "hawcro",
  "chirav",
  "comrav",
  "carchi",
  "bkcchi",
  "mouchi",
  "mexchi",
  "chbchi",
  "borchi2",
  "gyhchi",
  "britit",
  "oaktit",
  "juntit1",
  "tuftit",
  "blctit4",
  "gretit1",
  "verdin",
  "horlar",
  "skylar",
  "thbwar1",
  "sedwar1",
  "blrwar1",
  "miller",
  "pagwar1",
  "migwar",
  "lanwar",
  "eurwar2",
  "bawswa1",
  "nrwswa",
  "purmar",
  "cubmar",
  "gybmar",
  "soumar",
  "brcmar1",
  "treswa",
  "manswa1",
  "vigswa",
  "bahswa",
  "banswa",
  "barswa",
  "cliswa",
  "cavswa",
  "cohmar1",
  "revbul",
  "rewbul",
  "woowar",
  "yebwar3",
  "palwar5",
  "duswar",
  "wlwwar",
  "comchi1",
  "arcwar1",
  "arcwar2",
  "jabwar",
  "bushti",
  "leswhi4",
  "wrenti",
  "swiwhe1",
  "warwhe1",
  "indwhe1",
  "reblei",
  "melthr",
  "gnlthr",
  "ruckin",
  "gockin",
  "rebnut",
  "whbnut",
  "pygnut",
  "bnhnut",
  "brncre",
  "buggna",
  "bktgna",
  "calgna",
  "bkcgna",
  "rocwre",
  "canwre",
  "houwre",
  "pacwre1",
  "winwre3",
  "sedwre1",
  "marwre",
  "carwre",
  "bewwre",
  "cacwre",
  "sinwre1",
  "amedip",
  "hilmyn",
  "eursta",
  "commyn",
  "blumoc",
  "grycat",
  "cubthr",
  "brnthr",
  "lobthr",
  "benthr",
  "calthr",
  "lecthr",
  "crithr",
  "sagthr",
  "bahmoc",
  "tromoc",
  "normoc",
  "easblu",
  "wesblu",
  "moublu",
  "towsol",
  "brbsol1",
  "kamao",
  "olomao",
  "omao",
  "puaioh",
  "varthr",
  "obnthr1",
  "bhnthr1",
  "veery",
  "gycthr",
  "bicthr",
  "swathr",
  "herthr",
  "woothr",
  "aztthr",
  "sonthr1",
  "redwin",
  "whtrob1",
  "clcrob",
  "amerob",
  "rubrob",
  "relthr1",
  "eyethr",
  "fieldf",
  "dusthr2",
  "dusthr1",
  "gysfly1",
  "dasfly",
  "asbfly",
  "spofly1",
  "whrsha",
  "eurrob1",
  "rutrob1",
  "sibrob",
  "blueth",
  "sibrub",
  "refblu",
  "narfly2",
  "mugfly",
  "taifly1",
  "rebfly",
  "comred2",
  "rtrthr1",
  "sibsto1",
  "norwhe",
  "piewhe1",
  "bohwax",
  "cedwax",
  "kauoo",
  "grsfly1",
  "phaino",
  "oliwar",
  "orabis1",
  "zebfin2",
  "broman1",
  "afrsil1",
  "javspa",
  "nutman",
  "blfmun1",
  "trimun",
  "chemun",
  "lavwax",
  "orcwax",
  "comwax",
  "bkrwax",
  "redava",
  "reccor",
  "pitwhy",
  "sibacc",
  "houspa",
  "eutspa",
  "grywag",
  "eaywag",
  "citwag",
  "whiwag",
  "trepip",
  "olbpip",
  "pecpip",
  "retpip",
  "amepip",
  "sprpip",
  "comcha",
  "brambl",
  "evegro",
  "hawfin",
  "poouli",
  "akikik",
  "mauala",
  "palila",
  "layfin",
  "nihfin",
  "crehon",
  "apapan",
  "iiwi",
  "ou",
  "maupar",
  "nukupu2",
  "akiapo",
  "aniani",
  "hawama",
  "oahama",
  "kauama",
  "hawcre",
  "akekee",
  "akepa1",
  "akepa3",
  "comros",
  "palros2",
  "pingro",
  "eurbul",
  "asrfin1",
  "gcrfin",
  "bkrfin",
  "bcrfin",
  "houfin",
  "purfin",
  "casfin",
  "eurgre1",
  "origre",
  "yefcan",
  "comred",
  "hoared",
  "redcro",
  "redcro9",
  "whwcro",
  "eurgol",
  "eursis",
  "pinsis",
  "lesgol",
  "lawgol",
  "amegfi",
  "laplon",
  "chclon",
  "smilon",
  "mcclon",
  "snobun",
  "mckbun",
  "pinbun",
  "yetbun1",
  "palbun",
  "reebun",
  "yebbun",
  "litbun",
  "rusbun",
  "yebbun1",
  "grybun",
  "ruwspa",
  "botspa",
  "casspa",
  "bacspa",
  "graspa",
  "olispa",
  "fisspa",
  "chispa",
  "clcspa",
  "bkcspa",
  "fiespa",
  "brespa",
  "worspa",
  "bktspa",
  "larspa",
  "larbun",
  "amtspa",
  "foxspa",
  "daejun",
  "yeejun",
  "whcspa",
  "gocspa",
  "harspa",
  "whtspa",
  "sagspa1",
  "belspa2",
  "strspa1",
  "vesspa",
  "lecspa",
  "seaspa",
  "nstspa",
  "sstspa",
  "savspa",
  "baispa",
  "henspa",
  "sonspa",
  "linspa",
  "swaspa",
  "cantow",
  "abetow",
  "caltow",
  "rucspa",
  "gnttow",
  "spotow",
  "eastow",
  "wesspi",
  "yebcha",
  "yehbla",
  "boboli",
  "wesmea",
  "easmea",
  "bkvori",
  "orcori",
  "hooori",
  "stbori",
  "bulori",
  "spbori",
  "altori",
  "audori",
  "balori",
  "blbori1",
  "scoori",
  "rewbla",
  "tribla",
  "tasbla",
  "shicow",
  "brocow",
  "bnhcow",
  "rusbla",
  "brebla",
  "comgra",
  "botgra",
  "grtgra",
  "ovenbi1",
  "woewar1",
  "louwat",
  "norwat",
  "bacwar",
  "gowwar",
  "buwwar",
  "bawwar",
  "prowar",
  "swawar",
  "crcwar",
  "tenwar",
  "orcwar",
  "colwar",
  "lucwar",
  "naswar",
  "virwar",
  "conwar",
  "gycyel",
  "macwar",
  "mouwar",
  "kenwar",
  "comyel",
  "hoowar",
  "amered",
  "kirwar",
  "camwar",
  "cerwar",
  "norpar",
  "tropar",
  "magwar",
  "babwar",
  "bkbwar",
  "yelwar",
  "chswar",
  "bkpwar",
  "btbwar",
  "palwar",
  "pinwar",
  "yerwar",
  "yetwar",
  "prawar",
  "grawar",
  "btywar",
  "towwar",
  "herwar",
  "gchwar",
  "btnwar",
  "fatwar",
  "rucwar",
  "gcrwar",
  "canwar",
  "wlswar",
  "refwar",
  "paired",
  "sltred",
  "heptan",
  "sumtan",
  "scatan",
  "westan",
  "flctan",
  "crcgro",
  "norcar",
  "pyrrhu",
  "yelgro",
  "robgro",
  "bkhgro",
  "blubun",
  "blugrb1",
  "lazbun",
  "indbun",
  "varbun",
  "paibun",
  "dickci",
  "reccar",
  "yebcar",
  "relhon1",
  "saffin",
  "whcsee1",
  "whcsee2",
  "banana",
  "yefgra1",
  "cubgra",
  "bkfgra"
]
URL = "https://ebird.org/species/"

mechanize = Mechanize.new
num = 0
# puts us_birds[64]
# puts us_birds[128]
# puts us_birds[254]
# puts us_birds[578]

# puts us_birds[1173]

while num < 1173 do 
  page = mechanize.get(URL + us_birds[num])
  common_name = page.search('h1.Playlist-heading').text
  sci_name = page.search('span.Heading-sub.Heading-sub--sci.Heading-sub--custom.u-text-4-loose').text
  desc = page.search('p.u-stack-sm').text.gsub(/Learn more about .* from…/, "")
  attr = page.search('div.MediaFeedItem-user').text
  if page.search('div.MediaFeedItem-attribution').children[0] != nil
    # puts page.search('div.MediaFeedItem-attribution')
    # .children[0].text.split('eBird ', -1)[1]
    ebird_attr = page.search('div.MediaFeedItem-attribution').children[0].text.split('eBird ', -1)[1]
    ebird_attr_URL = "https://ebird.org/checklist/#{ebird_attr}"
    else
      puts "error"
  end 
  puts "seeding bird #{num}"
  image = page.images[0]
  # puts common_name
  # puts sci_name
  # puts image
  # puts desc
  # puts attr
  # puts ebird_attr_URL
  num = num + 1
  Bird.create(common_name: common_name, sci_name: sci_name, image: image, description: desc, attribution: attr, ebird: ebird_attr_URL )
end


puts "finished seeding 🍃"
# puts us_birds.length