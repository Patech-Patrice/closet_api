require 'rails_helper'
require 'pry'

RSpec.describe 'Closet API', type: :request do
        describe 'GET /handbags' do
            before do
                FactoryBot.create(:handbag, 
                name:"Gucci Tian Chain Wallet", 
                style:"Wallet on a Chain", 
                description:"Multicolor chain wallet with Tian print", 
                brand_name:"Gucci", 
                size:"XS")
                FactoryBot.create(:handbag, name:"Gucci GG Marmont Matelasse", style:"Wallet on a Chain", description:"Monogram GG logo mini Bag with gold chain", brand_name:"Gucci", size:"XS")
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


    it "is has a name" do
        handbag = Handbag.new(
            name:'',
            style: 'style',
            description: 'description',
            brand_name: 'brand name',
            size: 'size'
        )
         expect(handbag).to_not be_valid  
         handbag.name = "has a name" 
         expect(handbag).to be_valid
    end

    #it is not valid without a style
     it "is has a style" do
        handbag = Handbag.new(
            name:'Gucci',
            style: '',
            description: 'description',
            brand_name: 'brand name',
            size: 'size'
        )
         expect(handbag).to_not be_valid  
         handbag.style = "has a style" 
         expect(handbag).to be_valid
    end


    # it "is not valid without a description"
    it "is has a description" do
        handbag = Handbag.new(
            name:'name',
            style: 'style',
            description: '',
            brand_name: 'brand name',
            size: 'size'
        )
         expect(handbag).to_not be_valid  
         handbag.description = "has a description" 
         expect(handbag).to be_valid
    end

    # it "is not valid without a brand_name"
    it "is has a brand_name" do
        handbag = Handbag.new(
            name:'name',
            style: 'style',
            description: 'description',
            brand_name: '',
            size: 'size'
        )
         expect(handbag).to_not be_valid  
         handbag.brand_name = "has a brand name" 
         expect(handbag).to be_valid
    end

    # it "is not valid without a size"
    it "is has a size" do
        handbag = Handbag.new(
            name:'name',
            style: 'style',
            description: 'description',
            brand_name: 'brand name',
            size: ''
        )
         expect(handbag).to_not be_valid  
         handbag.size = "has a size" 
         expect(handbag).to be_valid
    end




    describe 'DELETE /handbags/:id' do
        #create a factory bot and assign it to handbag
    let!(:handbag) {FactoryBot.create(:handbag, 
    name:"name", 
    style:"style", 
    description:"description", 
    brand_name:"brand name", 
    size:"size")}

    it 'deletes a handbag' do
        expect {
         #string interpolation only works with double quotes
         delete "/api/v1/handbags/#{handbag.id}"
    }.to change { Handbag.count }.from(1).to(0)
       
       

        expect(response).to have_http_status(:no_content)
    end
end










end    