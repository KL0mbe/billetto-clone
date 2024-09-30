import 'package:billetto/constants.dart';
import 'package:billetto/widgets/app_store_image.dart';
import 'package:billetto/widgets/card_title.dart';
import 'package:billetto/widgets/country_image.dart';
import 'package:billetto/widgets/faq_answers.dart';
import 'package:billetto/widgets/faq_section.dart';
import 'package:billetto/widgets/grey_hyper_link.dart';
import 'package:billetto/widgets/hyper_link.dart';
import 'package:billetto/widgets/language_dropdown_menu.dart';
import 'package:billetto/widgets/my_app_bar.dart';
import 'package:billetto/widgets/my_button.dart';
import 'package:billetto/widgets/my_divider.dart';
import 'package:billetto/widgets/my_drawer.dart';
import 'package:billetto/widgets/my_elevated_button.dart';
import 'package:billetto/widgets/my_text_field.dart';
import 'package:billetto/widgets/payment_image.dart';
import 'package:billetto/widgets/social_media_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExpanded1 = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;

  String language = "dansk";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:
          MediaQuery.of(context).size.width <= 1030 ? const MyDrawer() : null,
      backgroundColor: const Color(0xFF1b1d1e),
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      // Column1
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              "Koncert, Forestilling, Opvisning    /    Musik    /    Rock",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 30),
                            child: Text(
                              "Øresund Space Collective - 20th anniversary shows",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "images/thumbnail.jpg",
                              width: 817,
                              height: 465,
                            ),
                          ),
                          const SizedBox(height: 16),
                          // card1
                          SizedBox(
                            width: 827,
                            child: Card(
                              color: const Color(0xFF27272A),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CardTitle(
                                      title: "Beskrivelse",
                                      fontSize: 16,
                                    ),
                                    if (isExpanded1) ...[
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          "Scandinavian supergroup, Øresund Space Collective, will be celebrating their 20th anniversary of playing live concerts on April 11-12th, at the legendary Stengade venue in Copenhagen. The band has recently released their 44th album called Orgone Unicorn. For this show, the band will play two sets each night with different musicians that have played in the collective over the 20 years. Expect 3hrs of unique improvised space rock features members from Gas Giant, Univerzals, Carpet Knights, Hofoot, Mantric Muse, Siena Root, Black Moon Circle, Causa Sui and more.... Special light show but Peter Petersen and his wife. Special merch stand and poster gallery, etc....",
                                          style: kCardTextStyle,
                                        ),
                                      ),
                                      const HyperLink(text: "Facebook"),
                                      const HyperLink(text: "Bandcamp"),
                                      const HyperLink(text: "Spotify"),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 16),
                                        child: Text(
                                          "---------------------------------------------------------------------\n"
                                          "Friday Ticket: 200 kr\n"
                                          "Saturday Ticket: 200 kr\n"
                                          "Limited Amount Partout Ticket For Both Shows: 350 kr",
                                          style: kCardTextStyle,
                                        ),
                                      ),
                                    ] else
                                      Stack(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16),
                                            child: Text(
                                              "Scandinavian supergroup, Øresund Space Collective, will be celebrating their 20th anniversary of playing live concerts on April 11-12th, at the legendary Stengade venue in Copenhagen. The band has recently released their 44th album called Orgone Unicorn. For this show, the band will play two sets each night with different musicians that have played in the collective over the 20 years. Expect 3hrs of unique improvised space rock features members from",
                                              maxLines: 4,
                                              style: kCardTextStyle,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xFF27272A)
                                                        .withOpacity(0),
                                                    const Color(0xFF27272A),
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    MyButton(
                                      onPressed: () {
                                        setState(() {
                                          isExpanded1 = !isExpanded1;
                                        });
                                      },
                                      color: Colors.blue,
                                      text: isExpanded1
                                          ? "Vis mindre"
                                          : "Læs mere",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          // card2
                          SizedBox(
                            width: 827,
                            child: Card(
                              color: const Color(0xFF27272A),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(bottom: 16),
                                      child: CardTitle(
                                        title: "Arrangør",
                                        fontSize: 16,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          backgroundImage:
                                              AssetImage("images/stengade.png"),
                                          radius: 24,
                                        ),
                                        // column
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Spillestedet Stengade",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "Event arrangør",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        if (MediaQuery.of(context).size.width >
                                            420) ...[
                                          MyButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            text: "Kontakt",
                                          ),
                                        ],
                                      ],
                                    ),
                                    if (MediaQuery.of(context).size.width <=
                                        420) ...[
                                      const SizedBox(height: 16),
                                      MyButton(
                                        onPressed: () {},
                                        color: Colors.white,
                                        text: "Kontakt",
                                      ),
                                    ],
                                    if (isExpanded2) ...[
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 16),
                                        child: Text(
                                          "Spillestedet Stengade is a progressive user-driven music venue in the middle of Nørrebro in Copenhagen. The music profile at Spillestedet Stengade is diverse - often based on the local underground but also with a large number of international artists.\n\n"
                                          "The house's many dedicated volunteers are the absolute lifeblood of Stengade, who run our approx. 200 concert events per year. Without them there wouldn't be any shows!\n\n\n",
                                          style: kCardTextStyle,
                                        ),
                                      ),
                                    ] else
                                      Stack(
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16),
                                            child: Text(
                                              "Spillestedet Stengade is a progressive user-driven music venue in the middle of Nørrebro in Copenhagen. The music profile at Spillestedet Stengade is diverse - often based on the local underground but also with a large number of international artists.\n\n"
                                              "The house's many dedicated volunteers are the absolute lifeblood of Stengade, who run our approx. 200 concert events per year. Without them there wouldn't be any shows!",
                                              maxLines: 4,
                                              style: kCardTextStyle,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            right: 0,
                                            child: Container(
                                              height: 100,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    const Color(0xFF27272A)
                                                        .withOpacity(0),
                                                    const Color(0xFF27272A),
                                                  ],
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    MyButton(
                                      onPressed: () {
                                        setState(() {
                                          isExpanded2 = !isExpanded2;
                                        });
                                      },
                                      color: Colors.blue,
                                      text: isExpanded2
                                          ? "Vis mindre"
                                          : "Læs mere",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          // card3
                          SizedBox(
                            width: 827,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded3 = !isExpanded3;
                                });
                              },
                              child: Card(
                                color: const Color(0xFF27272A),
                                child: Padding(
                                  padding: !isExpanded3
                                      ? const EdgeInsets.only(
                                          left: 16, top: 16, right: 16)
                                      : const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: Row(
                                          children: [
                                            const CardTitle(
                                              title: "Lokation",
                                              fontSize: 16,
                                            ),
                                            const Spacer(),
                                            Icon(
                                              isExpanded3
                                                  ? CupertinoIcons.minus
                                                  : CupertinoIcons.plus,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (isExpanded3) ...[
                                        Image.asset("images/location.png"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 16),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on_outlined,
                                                color: kGrey300,
                                                size: 20,
                                              ),
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  430) ...[
                                                const SizedBox(width: 16),
                                                const Text(
                                                  "Spillestedet Stengade, Stengade 18, 2200 København",
                                                  style: kCardTextStyle,
                                                ),
                                              ],
                                              if (MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  610) ...[
                                                const Spacer(),
                                                MyButton(
                                                  onPressed: () {},
                                                  color: Colors.white,
                                                  text: "Kørselsvejledning",
                                                ),
                                              ],
                                            ],
                                          ),
                                        ),
                                        if (MediaQuery.of(context).size.width <=
                                            430) ...[
                                          const SizedBox(height: 16),
                                          const Text(
                                            "Spillestedet Stengade, Stengade 18, 2200 København",
                                            style: kCardTextStyle,
                                          ),
                                        ],
                                        if (MediaQuery.of(context).size.width <=
                                            610) ...[
                                          const SizedBox(height: 16),
                                          MyButton(
                                            onPressed: () {},
                                            color: Colors.white,
                                            text: "Kørselsvejledning",
                                          ),
                                        ]
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          // card4
                          SizedBox(
                            width: 827,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isExpanded4 = !isExpanded4;
                                });
                              },
                              child: Card(
                                color: const Color(0xFF27272A),
                                child: Padding(
                                  padding: !isExpanded4
                                      ? const EdgeInsets.only(
                                          left: 16, top: 16, right: 16)
                                      : const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 16),
                                        child: Row(
                                          children: [
                                            const CardTitle(
                                              title: "FAQ",
                                              fontSize: 16,
                                            ),
                                            const Spacer(),
                                            Icon(
                                              isExpanded4
                                                  ? CupertinoIcons.minus
                                                  : CupertinoIcons.plus,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                      if (isExpanded4) ...[
                                        // const MyDivider(),
                                        const FAQSection(
                                          title:
                                              "Jeg har ikke modtaget min billet via e-mail. Hvad skal jeg gøre?",
                                          text:
                                              "Det første du skal gøre, er at tjekke spam, uønsket post samt reklame mappen, da vi desværre nogle gange smide derhen. Det skyldes dine billetter er sendt som vedhæftet fil og det kan betrægtes som spam af nogle systemer. Alternativt kan du altid finde dine billetter ved at logge ind på din Billetto konto, som du kan tilgå via vores app eller browser. For mere hjælp,",
                                        ),
                                        const FAQSection(
                                          title:
                                              "Jeg ønsker at annullere min billet og modtage en refusion. Hvad skal jeg gøre?",
                                          text:
                                              "De fleste billetter kan desværre ikke altid refunderes. Men du er altid velkommen til at kontakte arrangøren direkte, for at se om de er villige til at acceptere din forespørgsel om en refundering. Du kan kontakte arrangøren ved at klikke på arrangør og dernæst kontakt eller besvare din ordrebekræftelse. For mere hjælp,",
                                        ),
                                        const FAQSection(
                                            title:
                                                "Jeg har skrevet mig på ventelisten, hvad sker der nu?",
                                            text:
                                                "Hvis flere billetter bliver tilgængelige, vil du få besked (via e-mail) sammen med de andre som er tilmeldt ventelisten. Det er efter først-til-mølle-princippet. For mere information,"),
                                        const FAQSection(
                                          title:
                                              "Hvor finder jeg linket til et online event?",
                                          text:
                                              "På ordrebekræftelsessiden ved genenmført køb eller på ordrebekræftelsen sendt til dig på mail. Normalt vil arrangøren af eventet oplyse dig om dette i din ordrebekræftelses email, som du modtager fra os, eller efter ordren er booket sende dig en email med de informationer du skal bruge. Du kan også læse event beskrivelsen, da de kan have oplyst det der, hvordan du får adgang til eventet. For mere information,",
                                        ),
                                        const FAQSection(
                                          title:
                                              "Hvad er en billetforsikring, og hvorfor skulle jeg have brug for det?",
                                          text:
                                              "Med billetforsikringen har du mulighed for at modtage en refusion, ved nogle uforudsete hændelser gennem ERV. For mere information,",
                                        ),
                                      ],
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Column2
                      Column(
                        children: [
                          if (MediaQuery.of(context).size.width > 1247)
                            const SizedBox(height: 150),
                          // card1
                          const SizedBox(
                            width: 405,
                            height: 230,
                            child: Card(
                              color: Color(0xFF27272A),
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CardTitle(
                                          title: "Fra DKK 200,00",
                                          fontSize: 18,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: MyElevatedButton(
                                        title: "Find billetter",
                                      ),
                                    ),
                                    HyperLink(
                                      text: "Del event",
                                      fontSize: 16,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // card2
                          SizedBox(
                            width: 405,
                            child: Card(
                              color: const Color(0xFF27272A),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const CardTitle(
                                      title: "Sted",
                                    ),
                                    const SizedBox(height: 16),
                                    const Text(
                                      "Spillestedet Stengade\n"
                                      "Stengade 18, 2200 København",
                                      style: kCardTextStyle,
                                    ),
                                    const MyDivider(),
                                    const CardTitle(
                                      title: "Dato",
                                    ),
                                    const SizedBox(height: 16),
                                    const Text(
                                      "11 apr 2025 kl. 20:00 - 13 apr 2025 kl. 02:00",
                                      style: kCardTextStyle,
                                    ),
                                    const MyDivider(),
                                    const CardTitle(title: "Deltagere"),
                                    const SizedBox(height: 16),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "images/deltagere.png",
                                          width: 260,
                                        ),
                                        const Spacer(),
                                        const HyperLink(text: "se flere >"),
                                      ],
                                    ),
                                    const MyDivider(),
                                    const CardTitle(title: "Tags"),
                                    const SizedBox(height: 16),
                                    Wrap(
                                      spacing: 8,
                                      runSpacing: 8,
                                      children: [
                                        MyButton(
                                          onPressed: () {},
                                          color: Colors.blue,
                                          text: "Events i København",
                                        ),
                                        MyButton(
                                          onPressed: () {},
                                          color: Colors.blue,
                                          text:
                                              "Koncert, Forestilling, Opvisning i København",
                                        ),
                                        MyButton(
                                          onPressed: () {},
                                          color: Colors.blue,
                                          text: "Musik i København",
                                        ),
                                        MyButton(
                                          onPressed: () {},
                                          color: Colors.blue,
                                          text: "Rock i København",
                                        ),
                                      ],
                                    ),
                                    const MyDivider(),
                                    Image.asset(
                                      "images/billetto.png",
                                      width: 120,
                                      height: 40,
                                    ),
                                    const FAQAnswer(
                                      text:
                                          "Du kan trygt booke hos os: Billetto garanterer refundering via tilbagebetaling for aflyste events.",
                                    ),
                                    const MyDivider(),
                                    const CardTitle(
                                      title: "Accepterede betalingsmetoder:",
                                    ),
                                    const SizedBox(height: 16),
                                    Wrap(
                                      spacing: 4,
                                      children: [
                                        const PaymentImage(
                                          image: "images/mobilePay.png",
                                          height: 27,
                                        ),
                                        const PaymentImage(
                                          image: "images/applePay.png",
                                        ),
                                        const PaymentImage(
                                          image: "images/googlePay.png",
                                        ),
                                        Container(
                                          color: Colors.white,
                                          child: const PaymentImage(
                                            image: "images/visa.png",
                                          ),
                                        ),
                                        const PaymentImage(
                                          image: "images/masterCard.png",
                                          width: 50,
                                          height: 35,
                                        ),
                                        const PaymentImage(
                                          image: "images/americanExpress.png",
                                          width: 50,
                                          height: 35,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 32),
            // linksRow
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Alle",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "I dag",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "I morgen",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Weekend",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Musik",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Optræden & Visuel Kunst",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Helse & Velvære",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Hobbyer & Specielle Interesser",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Samfund & Kultur",
                    ),
                    MyButton(
                      onPressed: () {},
                      color: Colors.white,
                      text: "Mad & Drikke",
                    ),
                  ],
                ),
              ),
            ),
            const MyDivider(),
            // footerNavigation
            SizedBox(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceEvenly,
                runSpacing: 16,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: "Arrangør",
                        fontSize: 16,
                      ),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Hvorfor Billetto?"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Alle funktioner"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Priser for arrangører"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Kunder"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Book et salgsmøde"),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: "Billetkøber",
                        fontSize: 16,
                      ),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Gennemse begivenheder"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Hent appen"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Billetkøber"),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: "Discover",
                        fontSize: 16,
                      ),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Events i København"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Events i Aarhus"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Events i Aalborg"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Events i Odense"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Koncerter i København"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Keramikkurser i København"),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardTitle(
                        title: "Ressourcer",
                        fontSize: 16,
                      ),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Hjælpecenter"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Kontakt support"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Send feedback"),
                      SizedBox(height: 16),
                      GreyHyperLink(text: "Udviklere"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CardTitle(
                        title: "Skift Sprog",
                        fontSize: 16,
                      ),
                      const SizedBox(height: 16),
                      LanguageDropdownMenu(
                        onSelected: (value) {
                          setState(() {
                            language = value!;
                          });
                        },
                        language: language,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const MyDivider(),
            // newsLetter
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CardTitle(
                      title: "Vil du se flere events?",
                    ),
                    const SizedBox(height: 16),
                    MediaQuery.of(context).size.width > 500
                        ? const Text(
                            "Tilmeld dig her og modtag en række udvalgte events direkte i din indbakke",
                            style: kCardTextStyle,
                          )
                        : const Text(
                            "Tilmeld dig her og modtag en række\n"
                            "udvalgte events direkte i din indbakke",
                            style: kCardTextStyle,
                          ),
                  ],
                ),
                const Spacer(),
                if (MediaQuery.of(context).size.width > 930) ...[
                  const SizedBox(
                    width: 300,
                    child: MyTextField(hintText: "Din email"),
                  ),
                  const SizedBox(width: 16),
                  const SizedBox(
                    width: 100,
                    child: MyElevatedButton(title: "Tilmeld"),
                  ),
                ],
              ],
            ),
            if (MediaQuery.of(context).size.width <= 930) ...[
              const Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  SizedBox(
                    width: 300,
                    child: MyTextField(hintText: "Din email"),
                  ),
                  SizedBox(
                    width: 100,
                    child: MyElevatedButton(title: "Tilmeld"),
                  ),
                ],
              ),
            ],
            const SizedBox(height: 32),
            // aboutUs
            const Center(
              child: Wrap(
                spacing: 32,
                runSpacing: 16,
                children: [
                  GreyHyperLink(text: "Om"),
                  GreyHyperLink(text: "Mission"),
                  GreyHyperLink(text: "Karriere"),
                  GreyHyperLink(text: "Lederskab"),
                  GreyHyperLink(text: "Blog"),
                  GreyHyperLink(text: "Presse"),
                  GreyHyperLink(text: "Global side"),
                  GreyHyperLink(text: "Vilkår og betingelser"),
                  GreyHyperLink(text: "Alle events"),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // socialMediaLinks
            const Center(
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  SocialMediaImage(image: "images/facebook.png"),
                  SocialMediaImage(image: "images/instagram.png"),
                  SocialMediaImage(image: "images/twitter.png"),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // address
            const Center(
              child: Text(
                "Billetto ApS Trommesalen 5, 4",
                style: kCardTextStyle,
              ),
            ),
            const Center(
              child: Text(
                "1614 København V CVR 32569080",
                style: kCardTextStyle,
              ),
            ),
            const SizedBox(height: 32),
            // paymentMethods
            Center(
              child: Wrap(
                spacing: 16,
                runSpacing: 16,
                children: [
                  Container(
                    color: Colors.white,
                    child: const PaymentImage(
                      image: "images/visa.png",
                    ),
                  ),
                  const PaymentImage(
                    image: "images/masterCard.png",
                    width: 50,
                    height: 35,
                  ),
                  const PaymentImage(
                    image: "images/americanExpress.png",
                    width: 50,
                    height: 40,
                  ),
                  const PaymentImage(
                    image: "images/mobilePay.png",
                    height: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // languages
            const Center(
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  CountryImage(image: "images/danmark.png"),
                  CountryImage(image: "images/sverige.png"),
                  CountryImage(image: "images/england.png"),
                  CountryImage(image: "images/norge.png"),
                  CountryImage(image: "images/tyskland.png"),
                  CountryImage(image: "images/frankrig.png"),
                  CountryImage(image: "images/spanien.png"),
                  CountryImage(image: "images/holland.png"),
                  CountryImage(image: "images/italien.png"),
                  CountryImage(image: "images/ireland.png"),
                  CountryImage(image: "images/finland.png"),
                  CountryImage(image: "images/østrig.png"),
                  CountryImage(image: "images/belgium.png"),
                  CountryImage(image: "images/portugal.png"),
                ],
              ),
            ),
            const SizedBox(height: 32),

            Row(
              children: [
                MyButton(
                  onPressed: () {},
                  color: Colors.white,
                  text: "PrivatIndstillinger",
                  icon: CupertinoIcons.checkmark_shield,
                ),
                const Spacer(),
                const AppStoreImage(image: "images/appStore.png"),
                const AppStoreImage(image: "images/googlePlay.png")
              ],
            ),
            const SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
