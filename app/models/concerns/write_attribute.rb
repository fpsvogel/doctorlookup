module WriteAttribute
  # mimics ActiveRecord's write_attribute method
  def write_attribute(attr_name, value)
    @attributes[attr_name.to_s] = @attributes[attr_name.to_s]
                                    .with_value_from_user(value)
  end
end