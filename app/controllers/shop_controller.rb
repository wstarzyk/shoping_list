class ShopController < ApplicationController
    def index
        @shops = shop.all
    end
    
    def show
        @shop = shop.find_by_id(params[:id])
    end
    
    def new
    end
    
    def create
        t = shop.new
        t.item = params['item']
        t.cost = params['cost']
        t.save
        redirect_to "/shop/show/#{ t.id }"
    end
    
    def edit
        @shop = shop.find_by_id(params[:id])
    end
    
    def update
        t = shop.find_by_id(params['id'])
        t.item = params['item']
        t.cost = params['cost']
        t.save
        redirect_to "/shop/show/#{t.id}"
    end
    
    def destroy
        t = shop.find_by_id(params[:id])
        t.destroy
        redirect_to "/"
    end

end