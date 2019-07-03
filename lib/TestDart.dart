void main() {
//  Future.delayed(new Duration(seconds: 2),(){
//    return 'hello world';
//  }).then((value){
//    print(value);
//  });

  Future.delayed(Duration(seconds: 2), () {
    throw AssertionError('encouter a error');
  }).then((a) {
    print('success');
  }).catchError((e) {
    print(e.message);
  });
}
