import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'item_model.dart';

part 'item_state.dart';

class ItemCubit extends Cubit<ItemState> {
  ItemCubit() : super(ItemInitial());

  void funloaditem(){
    emit(ItemLoading());
    final itemslist =[
     Item("Card1" , "bluse red "),
     Item("Card1" , "bluse red "),
    Item("Card2" , "bluse green "),
    Item("Card3" , "bluse blue "),
    ];
    emit(Itemloaded(itemslist));

  }


}
