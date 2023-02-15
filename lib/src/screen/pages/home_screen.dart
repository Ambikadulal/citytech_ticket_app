import 'package:flutter/material.dart';
import 'package:ticket_app/src/screen/components/common_appbar_bottom_portion.dart';
import 'package:ticket_app/src/screen/components/common_container.dart';
import 'package:ticket_app/src/screen/components/common_time_period_show_comtainer.dart';
import 'package:ticket_app/src/screen/pages/ticket_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        title: const Text("Home"),
        actions: const [
          Icon(Icons.notification_add),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: CommonAppbarBottomPortion(leadingText: "Ticket Details"),
          ),
          const CommonTimePeriodShowContainer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              /// some issues happen here need to slove to display data
              // BlocProvider(
              //   builder: (context) => TicketBloc(repository: TicketRepositoryImpl()),
              //   create: (BuildContext context) {},
              //   child:
              // ),
              CommonHomePageContainer(
                  onTap: () =>
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const TicketDetailsScreen()))),
                  statusText: "Total Tickets",
                  icon: const Icon(
                    Icons.airplane_ticket,
                    color: Colors.grey,
                  ),
                  countText: "120"),
              const SizedBox(
                width: 10,
              ),
              const CommonHomePageContainer(
                  statusText: "In Progress Tickets",
                  icon: Icon(
                    Icons.print,
                    color: Colors.grey,
                  ),
                  countText: "50"),
            ],
          ),
          Row(
            children: const [
              CommonHomePageContainer(
                  statusText: "Closed Tickets",
                  icon: Icon(
                    Icons.airplane_ticket,
                    color: Colors.grey,
                  ),
                  countText: "120"),
              SizedBox(
                width: 10,
              ),
              CommonHomePageContainer(
                  statusText: "Unassigned Tickets",
                  icon: Icon(
                    Icons.print,
                    color: Colors.grey,
                  ),
                  countText: "50"),
            ],
          ),
          const CommonHomePageContainer(
              statusText: "Assigned Tickets",
              icon: Icon(
                Icons.print,
                color: Colors.grey,
              ),
              countText: "50"),
        ],
      ),
    );
  }
}
