import 'package:auto_route/auto_route_annotations.dart';
import '../ui/screens/home/home_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  HomeView homeView;
}
