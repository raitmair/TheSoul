# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#/   Mayor.create(name: 'Emanuel', city: cities.first)

#create categories for articles
Category.find_or_create_by!(:name => 'index')
Category.find_or_create_by!(:name => 'masaze')
Category.find_or_create_by!(:name => 'pohyb')
Category.find_or_create_by!(:name => 'vzyiva')
Category.find_or_create_by!(:name => 'kontakt')
Category.find_or_create_by!(:name => 'podminky')
Category.find_or_create_by!(:name => 'certifikaty')
Category.find_or_create_by!(:name => 'partneri')

#create categories for pricelist
PriceCategory.find_or_create_by!(:name => 'Masaze')
PriceCategory.find_or_create_by!(:name => 'Trening')
PriceCategory.find_or_create_by!(:name => 'Vyziva')

#create articles
Article.destroy_all

#clanky na indexu
Article.find_or_create_by!(:title => 'The Soul', :text => 'Každé tělo vypráví svůj příběh. Zrcadlí naše koníčky, zvyky,
práci, vztahy, štěstí i bolest, stres nebo smutek. Make-up ani větší velikost oblečení nás před námi samotnými neschová.
Zázrak se nekoná.
Chcete-li se opět cítit skvěle, být fit a zdravě, aktivně a funkčně žít, hýčkat a být hýčkáni …<br>
…vítejte v TheSoul.<br>
TheSoul je spojením <strong>relaxace</strong>, aktivního pohybu a vyváženého stravování.<br>
TheSoul je Vaším osobním masérem terapeutem, trenérem i výživovým poradcem.', :is_published => 't', :category_id => 8)


#clanky na str.pohyb
Article.find_or_create_by!(:title => 'Aktivní pohyb', :text => 'Chcete-li své tělo plně funkčně a zdravě používat,
zpevnit, vyrýsovat, či zhubnout, pojďme společně trénovat.<br>
Klienta vedu osobně, pomáhám s osvojením správných technik cvičení a cviků, dýchání, kontroluji správné provedení,
určuji zátěž a intenzitu cvičení a poskytuji konzultace k tréninku. Společně s klientem sledujeme vývoj a změny,
upravujeme trénink i konkrétní situaci.<br><br>
Svou fyzickou kondici můžete zlepšit jedině pravidelným tréninkem. Ovšem, mějte na paměti, že trénink/aktivní pohyb
jedenkrát týdně je skutečně velmi málo. Také nejíme jen jedenkrát týdně, abychom žili.<br>
Mé tréninky vždy obsahují cviky se zapojením hlubokého stabilizačního systému (HSSP = CORE). Cvičím s Bosu®, TRX®  i s
jinými závěsnými a balančními systémy a pomůckami, kettlebelly i činkami, čas od času využijeme i stroje. Společně se
mnou si  můžete užít také kruhové, intervalové či tabata tréninky.<br><br>
Statický posilovací trénink v posilovně jen na strojích (většinou jen pro jednotlivé svalové partie) není úplně
nejvhodnějším řešením pro všeobecně zdravé a funkční tělo a rozhodně není řešením pro všechny. Síla není tím
nejdůležitějším pro Vaši kondici a zdraví.<br><br>
Osobní i skupinový trénink mohu nabídnout v partnerském fitness centru ChrpaSport či v Centru Filipovka, při pěkném
počasí v outdoorové variantě v Kunratickém lese nebo relax parku u Chodovské tvrze a nebo také ve Vašem fitness centru
(jednotlivé vstupy do klientova fitness centra platí trenérovi klient).<br><br>
Nabízím i možnost párového či skupinového tréninku. Ve fitness centru pro maximálně dva klienty současně
(vyjma skupinových lekcí), v případě outdoorového tréninku maximálně pro 5 klientů.<br><br>
Skupinové lekce si pojďte užít každou středu v Centru Filipovka od 19:00 hod., vstupné je 100,- Kč/osoba.<br><br>
Taktéž ve Filipovce se chystám aktivně se hýbat se seniory i maminkami (s dětmi) na rodičovské dovolené a to v
dopoledních hodinách.', :is_published => 't', :category_id => 2)

#clanky na str.vyziva
Article.find_or_create_by!(:title => 'Poradenství zdravého stravování', :text => 'Koukáte do zrcadla a netušíte na koho?
Kvůli zavázání tkaniček sedáte do širokého sedu roznožného a tajíte dech? Loňské oblečení se Vám poněkud „srazilo“?<br><br>
Nebo prostě jen chcete být spokojení, líbit se sami sobě a být na sebe (a tedy i své tělo) hrdí?<br><br>
Společně zhodnotíme Vaše dosavadní stravovací návyky. Navrhnu Vám optimální složení, časový rozvrh a zastoupení živin v
jídelníčku. Společně budeme pravidelně konzultovat Vaše zvykání si a zavádění zdravých stravovacích návyků. Budete-li si
přát, můžu pro Vás na míru sestavit vzorový jednodenní jídelníček s ohledem na Váš cíl a zdravotní stav i denní režim.
<br><br>Zavádět nové stravovací návyky nebude možná tak náročné, jako jejich dodržování. S tím vším Vám jakožto výživová
poradkyně mohu pomoci.<br><br>
Každý máme svůj specifický metabolismus, stravovací návyky, chutě, potřeby. Na prvním místě je zdraví klienta, jeho
individuální potřeby a nároky a vedle toho i možnost kompromisu.', :is_published => 't', :category_id => 3)

#clanky na str.masaze
Article.find_or_create_by!(:title => 'Masáže, masážní terapie a techniky', :text => 'Rozhodnete-li se zajít si na masáž
 prvně a nebo prvně k masérovi, který Vás nezná, můžete očekávat, že se masér bude ptát na Vaše zdraví, práci i osobní
 život. Všechny tyto informace pomáhají k případnému vyloučení kontraindikací pro masáž a pro prvotní představu o
zvolení masáže.<br>
Je dobré  nechat veškerý blahodárný olej, který Vám na těle po masáži zůstane, hýčkat Vaše tělo co nejdéle, než si dáte
později sprchu doma (nejlépe až ráno).<br>
Zda svou masáž chcete tiše prorelaxovat nebo si povídat s masérem, je jen na Vás. Rozhodně neplatí, že se při masáži
nemluví.  Bude Vás obklopovat příjemné aroma, tichá relaxační hudba a příjemné osvětlení svíček či světlo solné lampy.
 Při masáži je totiž více než nutné, abyste pravidelně a klidně dýchali a to právě z důvodu Vašeho maximálního uvolnění
 psychického a současně svalového. Jedině tak může dojít k maximálnímu uvolnění napětí, bolesti či křečí.<br>
Alespoň dvě hodiny po masáži byste neměli dělat nic fyzicky ani psychicky náročného, již samotná masáž byla pro Vaše
svaly tou fyzickou prací, takovým tréninkem.  Další fyzická námaha by Vám spíše mohla způsobit problémy a pozdější
možná i bolesti. Zajděte si na procházku na čerstvý vzduch, nebo nejlépe si doma lehněte a v relaxaci pokračujte,
hodně pijte nejlépe čistou vodu.', :is_published => 't', :category_id => 1)

Article.find_or_create_by!(:title => 'Význam masáže:', :text => 'Masáž je starobylá metoda, využívaná k posílení
organismu, k upevnění tělesného i duševního zdraví a osvěžení po fyzické či psychické námaze. Nejstarší písemné zmínky
pochází ze starověkého Egypta a Číny. Ve starém Řecku se o masáži zmiňují Homér i Hippokrates, který znal účinky masáží
 při onemocnění kloubů a páteře, či při zmírnění svalových kontraktur.<br>
Masáž představuje výbornou alternativu k odstranění následků našeho života, našeho životního stylu u někoho plného
stresu z nedostatku pohybu a nebo jednostranného zatěžování organizmu. Masáž pomáhá přirozenou cestou řešit příčinu
potíží bez dalšího zatěžování organizmu různými medikamenty.<br>
Hnětením, roztíráním nebo třením, ale i chvěním a vytřásáním dochází k výraznému zlepšení prokrvení masírovaných oblastí,
 zlepšení mízního oběhu a tím masáž přispívá k usnadnění odtoku zplodin látkové výměny a kyseliny mléčné, které vyvolávají
únavu a celkově zatěžují organizmus, které jsou častou příčinou bolestí, otoků, ale podílí se i na vzniku celulitidy.
Masáží naopak dochází k okysličení buněk a zlepšení jejich činnosti a tím i ke zvýšení výživy jak pokožky a podkožního
vaziva i svalů.<br>
Masáž působí příznivě i na nervovou soustavu, proto se po masáži cítíme svěže, zbaveni stresu a napětí, jsme uvolněni,
relaxovaní. Dlouhodobou a hlavně pravidelnou masáží pozitivně ovlivníme celkový stav organizmu, protože masáž
představuje způsob jak nejen uvolnit záda, namožené a ztuhlé svaly, zlepšit stav své pokožky, ale i způsob jak být
celkově pevnější a pružnější. Pravidelnou masáží dochází k odstranění únavných látek (kyselina mléčná, kysličník
uhličitý, kreatinin) a dochází k lepšímu prokrvení šlach a svalů. Při přechodu šlach ve svaly se často objevují
bolestivé zatvrdliny, tedy místa většinou špatně prokrvená. Tyto zatvrdliny snižují výkon svalů a proto jejich masáž
přinese velkou úlevu.<br>
Masáží se zrychlí krevní oběh, tím i příjem okysličené krve a dojde k vyplavení škodlivých látek, které se také v
kloubech hromadí.<br>
Masáž pomůže urychlit a ulehčit odplavení odpadních látek, mikrobiálních jedů a choroboplodných výpotků, tedy masáž
velmi výrazně pomáhá funkci mízního systému.', :is_published => 't', :category_id => 1)

Article.find_or_create_by!(:title => 'Kdy nelze masáž provádět:', :text => 'Masáž je naprosto nevhodná ihned po vydatném
jídle a bezprostředně po těžké tělesné námaze, nebo při celkovém vyčerpání. Samozřejmě také když je masáž přímo zakázána
ošetřujícím lékařem.', :is_published => 't', :category_id => 1)

Article.find_or_create_by!(:title => 'KONTRAINDIKACE CELKOVÁ', :text => 'zapovídá masáž celého těla bezprostředně po
nadměrné fyzické námaze, kdy je lépe počkat i do druhého dne.<br>
Dále kontraindikace po vydatnějším jídle, kdy je lépe počkat 1 až 2 hodiny.<br>
Při výskytu infekčních chorob, viróz a při vysokých teplotách. Dále při nádorových onemocněních a po jejich léčbě,
pod vlivem alkoholu a psychotropních látek, psychózách, při závažnějších nemocech krve (hemofilie, leukémie). Při
poranění, onemocněních dutiny břišní a bolestivých stavech v oblasti břicha, při nízkém, vysokém a kolísavém krevním
tlaku a při epilepsii. U některých stavů lze celkovou masáž těla rozdělit do dvou etap, vždy se předem poraďte se
svým lékařem.', :is_published => 't', :category_id => 1)

Article.find_or_create_by!(:title => 'KONTRAINDIKACE ČÁSTEČNÁ', :text => 'nedovoluje masáž v místech hnisavých nebo
plísňových onemocnění, v místech zanícených kloubů, v místech krvácejícího poranění nebo rozsáhlejšího zhmoždění,
zlomenin, pokousání či uštknutí, v místě popálenin, opařenin nebo poleptaných ploch, v místě křečových žil (varixů),
zánětu žil nebo bércových vředů, v místě otoků nejasného původu, nádorů, bradavic, mateřských znamének, zanícených
ložisek, břicho těhotných žen a šestinedělek a u žen při menstruaci.', :is_published => 't', :category_id => 1)

Article.find_or_create_by!(:title => 'PORADA S LÉKAŘEM', :text => 'je víc než vhodná, trpíte-li nějakou vážnější nemocí.
Poraďte se předem se svým ošetřujícím lékařem, zda je masáž možná a v jakém rozsahu a nechte si, PROSÍM, vystavit
písemný souhlas s masáží.<br>
Poznámka: pokud si přejete pouze masáž zad – krku, případné potíže s krevním tlakem nevadí, cítíte-li se jinak dobře a
jste zdravá/ý, pak potvrzení nepotřebujete.<br><br>
Masáž v žádném případě nemůže nahradit odbornou lékařskou péči. Vždy a ve všech případech ohrožení zdraví nebo příznaků
závažnějších onemocnění, je nutno uvědomit lékaře. Některé masáže lze aplikovat i během těhotenství, ale je třeba zvážit
výběr a použití esenciálních olejů. Výběr olejů je třeba pečlivě zvážit i u masáží malých dětí.', :is_published => 't',
                           :category_id => 1)
#cenik

#kontakty
