


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kisukari_mobile_app/constants/backbutton.dart';
import 'package:kisukari_mobile_app/constants/kcolors.dart';
import 'package:kisukari_mobile_app/constants/kimages.dart';
import 'package:kisukari_mobile_app/constants/routes.dart';
import 'package:kisukari_mobile_app/providers/chatfontsize.dart';
// import 'package:kisukari_mobile_app/src/more_section/mr_kisukari/widgets/mrkisukarimessages.dart';
import 'package:kisukari_mobile_app/src/more_section/mr_kisukari/widgets/typemessage.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MrKisukariScreen extends StatefulWidget {
  const MrKisukariScreen({super.key});

  @override
  State<MrKisukariScreen> createState() => _MrKisukariScreenState();
}

class _MrKisukariScreenState extends State<MrKisukariScreen> {

  final ScrollController _scrollController = ScrollController();
  
   @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom()); // Scrolls to the bottom after the build
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent); // Instantly scrolls to the bottom
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // SliverAppBar: scrolls with the content
                SliverAppBar( 
                  floating: false, 
                  pinned: true, 
                  titleSpacing: 0,
                  leading: const CustomBackButton(),
                  backgroundColor: Kcolors.mainWhite,
                  title: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, communitychatinfo);
                          },
                          child: Row(
                            children: [
                              SizedBox(
                                height: 40,
                                child:
                                Image.asset(Kicons.customerserviceIcon, fit: BoxFit.contain)
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Mr Kisukari',
                                  style: GoogleFonts.roboto(
                                    color: Kcolors.mainBlack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  )
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Icon(Icons.verified_sharp,
                                size: 18,
                                color: Kcolors.mainRed,
                                ),
                              ),
                            ]
                          ),
                        ),
            
                        // this button is to increase text font size and reduce
                        if (Provider.of<ChatFontSize>(context).x == 19) // increases font
                          Consumer<ChatFontSize>(
                            builder: (context, chatFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    chatFontSize.incrementFont(19);
                                  },
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainBlack,
                                    size: 25,
                                  )
                                ),
                              );
                            }
                          ),
                        if (Provider.of<ChatFontSize>(context).x == 22) // decreases font
                          Consumer<ChatFontSize>(
                            builder: (context, chatFontSize, child) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: IconButton(
                                  onPressed: () {
                                    chatFontSize.decrementFont(22);
                                  },
                                  icon: Icon(Icons.format_size,
                                    color: Kcolors.mainRed,
                                    size: 25,
                                  )
                                ),
                              );
                            }
                          )
                        
                      ],
                    )
                  ,
                 
                ),
            
                //body title
                SliverFillRemaining(
                  child:
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 15, right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.mrkisukarititle,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainRed,
                                fontSize: 27,
                                fontWeight: FontWeight.bold
                              )
                            ),
                            Text(
                              AppLocalizations.of(context)!.mrkisukaribody,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Kcolors.mainBlack,
                                height: 1.3,
                                fontSize: 24,
                              )
                            )
                          ]
                        ),
                      ),
                    )
                ),
                //messages here UNCOMMENT THIS LINE
                // SliverList(
                //   delegate: SliverChildBuilderDelegate(
                //     (context, index) {
                //       return const MrKisukariChats(); // Friendtile
                //     },
                //     childCount: 2, 
                //   ),
                // ),
            
                
            
              ],
            ),
          ),

          // message input
          const Align(
            alignment: Alignment.bottomCenter,
            child: MrKisukariTypeMessage(),
          ),
        ],
      ),
    );
  }
}