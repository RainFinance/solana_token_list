import 'package:solana_token_list/solana_token_list.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Static Solana Tokens', () {
      var tokens = solanaTokenList.tokens;
      print('solanaTokenList size: ${tokens.length}');
    });

    test('CDN Solana Tokens', () async {
      var tokens =
          await TokenListStrategy().fetchTokenList(strategy: Strategy.CDN);
      print('CDN solanaTokenList size: ${tokens.length}');
    });
  });
}
