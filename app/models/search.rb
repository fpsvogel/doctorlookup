class Search
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :name, :string
  attribute :state, :string, default: UsaStates::DEFAULT

  validates :name, :state, presence: true

  def states
    UsaStates::ALL
  end
end