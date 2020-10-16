module ApplicationHelper
  def svg_tag(filename, options={})
    # https://coderwall.com/p/d1vplg/embedding-and-styling-inline-svg-documents-with-css-in-rails
    file = File.read(Rails.root.join('app', 'assets', 'icons', filename))
    doc = Nokogiri::HTML::DocumentFragment.parse(file)
    svg = doc.at_css('svg')
    if options[:class].present?
      svg['class'] = options[:class]
    end
    doc.to_html.html_safe
  end
end
