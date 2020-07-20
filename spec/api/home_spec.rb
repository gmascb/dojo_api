require 'swagger_helper'
# rake rswag:specs:swaggerize

describe 'Home Index API', swagger_doc: "v1/swagger.yaml" do

    path '/api/home/index' do
  
      get 'Get the Home#index' do
        tags 'Home'
        consumes 'application/json'
        
        response '200', 'You get the index' do
            schema type: :object,
                    properties: {
                        hello_world: { type: :string }
                    }
          run_test!
        end

      end
    end

  end