import 'package:ferry/ferry.dart';

extension GraphQlExtentions on Client {
  Future<OperationResponse<TData, TVars>> requestFirst<TData, TVars>(OperationRequest<TData, TVars> request, [Stream<OperationResponse<TData, TVars>> Function(OperationRequest<TData, TVars>)? forward]) {
    return this.request(request, forward).firstWhere((element) => true);
  }
}