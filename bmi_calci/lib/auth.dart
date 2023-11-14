Map<String, String> auther = {
  'hello@gmail.com': 'Hello@112',
};
bool addentry(String emailid, String pass) {
  final emailid1 = emailid;
  final pass1 = pass;
  Map<String, String> newew = {emailid: pass};
  auther.addEntries(newew.entries);
  print(auther);
  if (auther.containsKey(emailid)) {
    return true;
  } else
    return false;
}

bool login(String email, String pass) {
  print(auther);
  if (auther[email] == null || auther[email] != pass) {
    print("Invalid Email or Password");
    return false;
  } else {
    return true;
  }
}
