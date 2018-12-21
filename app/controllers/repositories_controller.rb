class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    begin
     @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
          req.params['client_id'] ='e3590f5e7c619934ca0b'
          req.params['client_secret'] = '5cd4bae7ec5ad7432004eace3bcbf581eb2849b9'
          req.params['q'] = '20160201'
          req.params['near'] = params[:zipcode]
          req.params['query'] = 'coffee shop'
          #req.options.timeout = 0
      end
    end
  end
end
