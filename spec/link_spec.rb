require 'data_mapper'
require 'link'

describe Link do
  let(:link) { Link.new }
    it 'has a title' do
      link.title= "Makers"
      expect(link.title).to eq "Makers"
   end

   it 'has a url' do
     link.url= "www.makers.com"
     expect(link.url).to eq "www.makers.com"
   end	

   it 'has a description' do
     link.description= "ahoy ahoy"
     expect(link.description).to eq "ahoy ahoy"
   end

  context 'it has a' do

    it 'description' do
      expect(link).to respond_to :description
    end

    it 'description=' do
      expect(link).to respond_to :description=
    end
  end



   #respond to methodology??
end

