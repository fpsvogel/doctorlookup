# Provides a shortcut to defining titleized string attributes in a model.
module StringAttributes
  extend ActiveSupport::Concern
  include ReadWriteAttribute

  class_methods do
    def add_string_attributes(required:, optional:)
      required.each do |attr|
        attribute attr, :string
        validates(attr, presence: true)
      end
      optional.each do |attr|
        attribute attr, :string
      end
    end

    def define_titleizing_setters(attrs)
      attrs.each do |attr|
        define_method "#{attr}=" do |new_value|
          new_value = titleize(new_value)
          write_attribute(attr, new_value)
        end
      end
    end
  end

  included do
    # similar to ActiveSupport::Inflector.titleize(string)
    def titleize(string)
      return nil if string.nil?
      string.split(" ").map(&:capitalize).join(" ")
    end
  end
end