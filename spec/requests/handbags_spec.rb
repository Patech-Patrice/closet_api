require 'rails_helper'
require 'pry'

RSpec.describe 'Closet API', type: :request do
        describe 'GET /handbags' do
            #this code gets executed before anything else in this do block
            before do
                FactoryBot.create(:handbag, 
                brand:"brand", 
                color:"color", 
                fabric:"fabric",  )
                FactoryBot.create(:handbag,
                 brand:"brand",
                 color:"color", 
                 fabric:"fabric", 
                 )
                get '/api/v1/handbags'
            end    

            it 'returns all handbags' do
           
            get '/api/v1/handbags'

            expect(response).to have_http_status(:success)
            expect(JSON.parse(response.body).size).to eq(2)
        end    
    end

    # describe 'POST /handbags' do
    #     scenario 'creates a new handbag' do
    #                 FactoryBot.create(:handbag, 
    #                 name:"Gucci Tian Chain Wallet", 
    #                 style:"Wallet on a Chain", 
    #                 description:"Multicolor chain wallet with Tian print", 
    #                 brand_name:"Gucci", 
    #                 size:"XS")
    #             post '/api/v1/handbags', params: {
    #                 handbag: {
    #                     name: 'Louis',
    #                     style: 'Damier Ebene',
    #                     description:'Classic Damier canvas',
    #                     brand_name:'Louis Vuitton',
    #                     size:'S',
    #                 }
    #             }  
    #         expect(response).to have_http_status(:created)
    #     end
    # end


    it "is has a brand" do
        handbag = Handbag.new(
            brand:'',
            color: 'style',
            fabric: 'description',
        )
         expect(handbag).to_not be_valid  
         handbag.brand = "has a brand" 
         expect(handbag).to be_valid
    end

    #it is not valid without a style
     it "is has a color" do
        handbag = Handbag.new(
            brand:'Gucci',
            color: '',
            fabric: 'description',
            
        )
         expect(handbag).to_not be_valid  
         handbag.color = "has a color" 
         expect(handbag).to be_valid
    end


    # it "is not valid without a description"
    it "is has a fabric" do
        handbag = Handbag.new(
            brand:'name',
            color: 'style',
            fabric: '',
        )
         expect(handbag).to_not be_valid  
         handbag.fabric = "has a fabric" 
         expect(handbag).to be_valid
    end

   

    describe 'DELETE /handbags/:id' do
        #create a factory bot and assign it to handbag
    let!(:handbag) {FactoryBot.create(:handbag, 
    brand:"name", 
    color:"style", 
    fabric:"description", 
    )}

    it 'deletes a handbag' do
        expect {
         #string interpolation only works with double quotes
         delete "/api/v1/handbags/#{handbag.id}"
    }.to change { Handbag.count }.from(1).to(0)
       
       

        expect(response).to have_http_status(:no_content)
    end
end










end    