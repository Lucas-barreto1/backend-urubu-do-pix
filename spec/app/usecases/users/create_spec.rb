require "spec_helper"
require './app/usecases/users/create'

RSpec.describe Users::Create do
  context 'with new user' do
    let(:create_user) { Users::Create.new(params: { name: 'John' }) }

    it { expect(create_user.call.class).to be(UserRepository) }
  end
end 