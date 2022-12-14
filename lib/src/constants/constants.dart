import 'dart:math' as math;

const kTodoItemPadding = 8.0;
const kTodoSpacing = 16.0;
const kDividerThickness = 2.0;
const kDividerIndent = 0.0;
const kTodoStringSpacing = 1.0;

const kMaxLengthOfTodo = 20;

const kDurationForDelete = 500;

const kRotationRadians = math.pi;

const kLaunchedKey = 'launched';

const kDisclaimer = '''
・免責事項
本アプリケーションの利用をもって、本免責事項に同意いただいたものとみなします。
本アプリケーションのダウンロードおよびご利用については、利用者自身の責任において行われるものとします。
当社は、本アプリケーションを使用することによって生じた、いかなる損害（有形無形に関わりなく）に対して責任を負いません。
お客さまご自身の責任においてご利用いただきますようお願いいたします。
当社は、利用者に対し、本アプリケーションにおいて提供するすべての情報について、その正確性、有用性、最新性、適切性等、その内容について何ら法的保証をするものではありません。
本アプリケーションをご利用の際の通信料は、お客さまのご負担となります。
本アプリケーションの内容・情報等は、予告なく変更されることがあります。
本規定は、予告なく内容を変更させて頂く場合があります。
''';

const kInitialTodo0 = 'Flutter を勉強する';
const kInitialTodo1 = '運動をする';
const kInitialTodo2 = '映画を見る';

const kAppIconPath = 'assets/icons/icon128px.png';
