require 'liquid'
require 'addressable/uri'

# Percent encoding for URI conforming to RFC 3986.
# Ref: http://tools.ietf.org/html/rfc3986#page-12
module URLFixer
  def url_fixer(url)
    return url[-1,1] == "/" ? url.chop : url
  end
end

Liquid::Template.register_filter(URLFixer)