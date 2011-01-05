module SimpleMobileView
  module Filter
  private
    def set_ua
      case request.env["HTTP_USER_AGENT"].to_s
      when /iPhone/
        lookup_context.ua = %w(iphone   ios     mobile)
      when /iPad/
        lookup_context.ua = %w(ipad     ios     mobile)
      when /Android 1/
        lookup_context.ua = %w(android1 android mobile)
      when /Android 2/
        lookup_context.ua = %w(android2 android mobile)
      end
    end
  end
end
