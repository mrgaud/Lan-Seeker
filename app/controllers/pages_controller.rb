class PagesController < ApplicationController
    def home
    	@messages = Message.all
    end

    def about 

    end

    def donate

    end
end
