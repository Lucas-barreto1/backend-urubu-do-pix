# frozen_string_literal: true

require './app/usecases/users/create'

class UsersController
  def create(params)
    Users::Create.new(params).call
  end
end