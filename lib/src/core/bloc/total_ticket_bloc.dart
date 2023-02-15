import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_app/src/core/data/model/api_result_model.dart';
import 'package:ticket_app/src/core/repo/ticket_repo.dart';

abstract class TicketEvent extends Equatable {}

class FetchTicketEvent extends TicketEvent {
  @override
  List<Object> get props => null;
}

abstract class TicketState extends Equatable {}

class TicketInitialState extends TicketState {
  @override
  List<Object> get props => [];
}

class TicketLoadingState extends TicketState {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class TicketLoadedState extends TicketState {
  List<TotalTicketDataModel> tickets;

  TicketLoadedState({required this.tickets});

  @override
  // TODO: implement props
  List<Object> get props => [tickets];
}

class TicketErrorState extends TicketState {
  String message;

  TicketErrorState({required this.message});

  @override
  // TODO: implement props
  List<Object> get props => [message];
}

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketRepository repository;

  TicketBloc({required this.repository});

  @override
  // TODO: implement initialState
  TicketState get initialState => TicketInitialState();

  @override
  Stream<TicketState> mapEventToState(TicketEvent event) async* {
    if (event is FetchTicketEvent) {
      yield TicketLoadingState();
      try {
        List<TotalTicketDataModel> ticket = await repository.getTicket();
        yield TicketLoadedState(tickets: ticket);
      } catch (e) {
        yield TicketErrorState(message: e.toString());
      }
    }
  }
}
