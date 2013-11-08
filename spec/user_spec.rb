require 'data_mapper'
require 'user'

describe User do
let(:user) { User.new }
  it 'has a name' do
    user.name= "Mark"
    expect(user.name).to eq "Mark"
  end

  it 'has an email' do
  	user.email= "ahoy@yourma.com"
  	expect(user.email).to eq "ahoy@yourma.com"
  end

  it 'has a password' do
  	user.password= "secret"
  	expect(user.password).to eq "secret"
  end
end