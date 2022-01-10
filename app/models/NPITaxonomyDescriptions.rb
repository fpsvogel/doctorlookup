# Scraped from a site. See taxonomy/scrape.rb.
class NPITaxonomyDescriptions < NPITaxonomyDescriptionsData
  DEFAULT_TEXT = "Any"
  DEFAULT_VALUE = ""
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
end