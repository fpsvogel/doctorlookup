# Scraped from a site. See taxonomy/scrape.rb.
class NPITaxonomyDescriptions < NPITaxonomyDescriptionsData
  DEFAULT_TEXT = "Any"
  DEFAULT_VALUE = ""
  SEPARATOR = " -- "

  ALL =
    [[DEFAULT_TEXT, DEFAULT_VALUE]] +
    DATA.map do |code, (classification, specialization)|
      if specialization
        ["#{classification} (#{specialization})",
         "#{classification} -- #{specialization}"]
      else
        ["#{classification}",
          "#{classification}"]
      end
    end

  TO_PARENTHESIZED =
    DATA.map do |code, (classification, specialization)|
      if specialization
        ["#{classification} #{specialization}",
        "#{classification} (#{specialization})"]
      else
        ["#{classification}",
          "#{classification}"]
      end
    end.to_h

  def self.join(split_taxonomy_description)
    split_taxonomy_description.sub(SEPARATOR, " ")
  end

  def self.parenthesize(joined_taxonomy_description)
    TO_PARENTHESIZED[joined_taxonomy_description] || joined_taxonomy_description
  end
end