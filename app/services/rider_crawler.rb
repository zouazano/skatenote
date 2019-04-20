require 'open-uri'
require 'nokogiri'
require 'csv'


class RiderCrawler
  def self.item_create

=begin
    [221,222,224,227,231,235,236,237,240,249,257,261,265,266,277,279,283,287,291,298,314,327,329,].each do |hoga|
      Brand.find(hoga).each do |hoge|
        p hoge.name
      end
    end
=end 
    Brand.all.each do |hoge|
      p [hoge.name, hoge.id]
    end

    n = 7.5
    n.step(8.3, 0.1).to_a.each do |hoge|
      p hoge
    end
  end

  def self.crawl
    
    url = "https://www.tactics.com/pros"
    user_agent = "User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0"
    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end
    doc = Nokogiri::HTML.parse(html, nil, charset)

    doc.xpath('/html/body/div[5]/div[position()<25]').each do |node|
      node.xpath('div/div/div').each do |saru|
        next if saru.xpath('a/span').inner_text == ''
        Rider.create(name: saru.xpath('a/span').inner_text)
      end
    end
  end

  def self.brand_crawl
    
    url = "https://www.tactics.com/brands/skate"
    user_agent = "User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0"
    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end
    doc = Nokogiri::HTML.parse(html, nil, charset)

    doc.xpath('/html/body/div[4]/div[2]/div[2]/div').each do |hoge|
      hoge.xpath('a').each do |saru|
        Brand.create(name: saru.inner_text)
      end
    end
  end

end