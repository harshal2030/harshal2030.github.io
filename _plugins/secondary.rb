module Jekyll
  class Secondary < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      "<span class=\"secondary-text\">#{@text}</span>"
    end
  end
end

Liquid::Template.register_tag('secondary', Jekyll::Secondary)
