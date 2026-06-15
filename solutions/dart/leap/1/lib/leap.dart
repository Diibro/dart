class Leap {
  // Put your code here
  bool leapYear(int yr) {
    if(yr % 400 == 0) return true;
    if(yr % 100 == 0) return false;
    return yr % 4 == 0;
  }
}
