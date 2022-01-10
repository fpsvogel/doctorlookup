class NpiTaxonomyDescriptions
  ANY_OPTION = "Any"
  SEPARATOR = " -- "

  ALL =
    # ANY twice because Selectize.js makes the empty option a placeholder.
    [[ANY_OPTION, ""],
     [ANY_OPTION, ANY_OPTION]] +
    NpiTaxonomyDescriptionsData::DATA.map do |code, (classification, specialization)|
      if specialization
        ["#{classification} (#{specialization})",
         "#{classification} -- #{specialization}"]
      else
        ["#{classification}",
          "#{classification}"]
      end
    end

  TO_PARENTHESIZED =
    NpiTaxonomyDescriptionsData::DATA.map do |code, (classification, specialization)|
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