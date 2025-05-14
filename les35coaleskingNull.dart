// ??

void main() {
    String? name = null;
    name = 'jimy';
    String displayName = name?.substring(0,3) ?? 'zero-name';

    print(displayName);

  final hz = User(
    // name: 'hz',
    phone: '937-99-92',
    // email: '@milo.com'
  ); //v konstruktore nado {}

  String displayNameHz = hz.getDisplayName;
  print(displayNameHz);
}

class User{
  const User({
    this.name,
    this.email,
    this.phone,
  });
  final String? name;
  final String? email;
  final String? phone;

  String get getDisplayName { //no ()
    return name ?? email ?? phone ?? 'no-name';
  }

}