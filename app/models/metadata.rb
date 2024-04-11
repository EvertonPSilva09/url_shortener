require "open-uri"

class Metadata
  attr_reader :doc

  def self.retrive_from(url)
    new(URI.open(url))
  rescue
    new
  end

  def initialize(html=nil)
    @doc = Nokogiri::HTML(html)
  end

  def attributes
    {
      title: title,
      description: description,
      image: image
    }
  end

  def title
    doc.at_css("title")&.text
  end

  def description
  end

  def image
  end
end