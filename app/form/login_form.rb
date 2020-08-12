class LoginForm
    include ActiveModel::Model
    include ActiveModel::Attributes
    attribute :name, :string
    attribute :password, :string
end