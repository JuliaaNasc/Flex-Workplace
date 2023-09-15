import 'package:flex_workplace/models/subsector.dart';

abstract class IGetSubsectors {
  List<Subsector> getSubsectors({
    required String sectorId,
  });
}
