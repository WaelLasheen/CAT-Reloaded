void main() {
  List<int> num= [10, 20 ,23 ,45, 96 , 10 ,21 ,22 ,21];
  // to set: 10 20 23 45 96 21 22
  print(num.toSet().toList().reversed);

}