import 'package:flutter_test/flutter_test.dart';

import 'package:neuomorphic_container/neuomorphic_container.dart';

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  });
}

/*
echo "# neuomorphic_container" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/Tomison-E/neuomorphic_container.git
git push -u origin master

 */