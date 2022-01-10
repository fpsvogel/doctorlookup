# Mimics ActiveRecord's methods read_attribute and write_attribute.
module ReadWriteAttribute
  def read_attribute(attr_name)
    @attributes[attr_name.to_s].value
  end

  def write_attribute(attr_name, value)
    @attributes[attr_name.to_s] = @attributes[attr_name.to_s]
                                    .with_value_from_user(value)
  end
end