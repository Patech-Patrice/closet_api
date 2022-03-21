require 'rails_helper'
require 'pry'
#one unit test
RSpec.describe 'Closet API', type: :request do
        describe 'GET /handbags' do
         it 'returns all handbags' do
            FactoryBot.create(:handbag, 
            name:"Gucci Tian Chain Wallet", 
            style:"Wallet on a Chain", 
            description:"Multicolor chain wallet with Tian print", 
            brand_name:"Gucci", 
            size:"XS")
            FactoryBot.create(:handbag, name:"Gucci GG Marmont Matelasse", style:"Wallet on a Chain", description:"Monogram GG logo mini Bag with gold chain", brand_name:"Gucci", size:"XS")
            get '/api/v1/handbags'

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
        end    
    end

    describe 'POST /handbags' do
        scenario 'creates a new handbag' do
                post '/api/v1/handbags', params: {
                    handbag: {
                        name: 'Louis',
                        style: 'Damier Ebene',
                        description:'Classic Damier canvas',
                        brand_name:'Louis Vuitton',
                        size:'S',
                    }
                }

      
 
              
               
            expect(response).to have_http_status(:created)
        end
    end

   

    describe 'DELETE /handbags/:id' do
        it 'deletes a handbag' do
            FactoryBot.create(:handbag, 
            name:"Gucci Tian Chain Wallet", 
            style:"Wallet on a Chain", 
            description:"Multicolor chain wallet with Tian print", 
            brand_name:"Gucci", size:"XS")

            delete '/api/v1/handbags/1'

            expect(response).to have_http_status(:no_content)
        end
    end


end    