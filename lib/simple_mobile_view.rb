require File.dirname(__FILE__) + "/simple_mobile_view/filter"
require File.dirname(__FILE__) + "/simple_mobile_view/railtie"

ActionView::LookupContext::register_detail(:ua) {""}
ActionView::PathResolver::EXTENSION_ORDER.unshift :ua
