class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:items] = 100
    Pagy::DEFAULT[:size]  = [1,4,4,1]
    require 'pagy/extras/bootstrap'
    require 'pagy/extras/overflow'
    Pagy::DEFAULT[:overflow] = :empty_page
    include Pagy::Backend    
end
