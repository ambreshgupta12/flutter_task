import 'dart:async';
import 'package:flutter_task/src/service/api_response.dart';
import 'package:meta/meta.dart';

class BaseBloc<@required T>{
  final _streamController=StreamController<ApiResponse<T>>.broadcast();
Stream<ApiResponse<T>>  get apiDataStream=>_streamController.stream;
StreamSink<ApiResponse<T>>  get _apiDataStreamSink=>_streamController.sink;
Status _status;

  streamDispose() {
    _streamController?.close();
  }

void startLoading(String message){
  _status=Status.Loading;
  _apiDataStreamSink.add(ApiResponse.loading(message));
}
void addDataToStream(T data){
  _status=Status.Completed;
  _apiDataStreamSink.add(ApiResponse.completed(data));
}

void addErrorToStream(String errorMessage){
  _status=Status.Error;
  _apiDataStreamSink.add(ApiResponse.error(errorMessage));
}

void unNotifiedErrorToStream(String errorMessage,T previousLoadedData){
  _status = Status.UnNotifiedError;
  if(previousLoadedData==null){
    _apiDataStreamSink.add(ApiResponse.error(errorMessage));
    throw Exception(errorMessage);
  }
  _apiDataStreamSink.add(ApiResponse.unNotifiedError(errorMessage, previousLoadedData));
}

}