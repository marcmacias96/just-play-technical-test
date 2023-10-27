import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'credentials.gform.dart';

@Rf()
class Credentials {

  Credentials({
    @RfControl(
      validators: [
        RequiredValidator(),
        EmailValidator(),
      ],
    )  required this.email,
    @RfControl(
      validators: [
        RequiredValidator(),
        MinLengthValidator(6),
      ],
    )  required this.password,
  });

  final String email;
  final String password;
}
