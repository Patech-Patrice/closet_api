require 'rails_helper'

describe 'Closet API', type: :request do
    it 'returns all handbags' do
        FactoryBot.create(:handbag, name:"Gucci Tian Chain Wallet", style:"Wallet on a Chain", description:"Multicolor chain wallet with Tian print", brand_name:"Gucci", size:"XS", price: 695)
        FactoryBot.create(:handbag, name:"Gucci GG Marmont Matelasse", style:"Wallet on a Chain", description:"Monogram GG logo mini Bag with gold chain", brand_name:"Gucci", size:"XS", price: 895)
        get '/api/v1/handbags'

        expect(response).to have_http_status(:success)
        expect(JSON.parse(response.body).size).to eq(2)
    end    
end    