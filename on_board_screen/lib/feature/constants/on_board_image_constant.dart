class OnBoardImageConstant {
  OnBoardImageConstant._();

  static final String createAcccount = 'create_account'.toPng;
  static final String login = 'login'.toPng;
  static final String happinessLogin = "happiness_login".toPng;
}

extension _StringPath on String {
  String get toPng => 'assets/png/$this.png';
}
