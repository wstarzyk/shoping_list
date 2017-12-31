class ShopController < ApplicationController
    def index
        @shops = Shop.all
    end
    
    def show
        @shop = Shop.find_by_id(params[:id])
    end
    
    def new
    end
    
    def create
        t = Shop.new
        t.item = params['item']
        t.cost = params['cost']
        t.save
        redirect_to "/shop/show/#{ t.id }"
    end
    
    def edit
        @shop = Shop.find_by_id(params[:id])
    end
    
    def update
        t = Shop.find_by_id(params['id'])
        t.item = params['item']
        t.cost = params['cost']
        t.save
        redirect_to "/shop/show/#{t.id}"
    end
    
    def destroy
        t = Shop.find_by_id(params[:id])
        t.destroy
        redirect_to "/"
    end

end