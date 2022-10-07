import 'package:dynamic_widget/dynamic_widget.dart';
import 'package:server_driven_demo_project/parsers/optimized_cache_image_widget_parser.dart';

class InitParser {
  static void initParsers() {
    DynamicWidgetBuilder.addParser(OptimizedCacheImageParser());
  }
}
