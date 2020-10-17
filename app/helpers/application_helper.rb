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

  def title text
    content_for(:title) { text }
  end

  def meta_tag tags, text
    content_for :"meta_#{tags}", text 
  end

  def yield_meta_tag tags, default_text='' 
    content_for?(:"meta_#{tags}") ? content_for(:"meta_#{tags}") : default_text
  end
end
