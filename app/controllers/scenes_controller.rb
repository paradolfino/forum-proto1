class ScenesController < ApplicationController
    
    def index
       @scenes = Scene.all 
    end
    
    def show
        
    end
    
    def new
        @scene = Scene.new
    end
    
    def create
        @scene = Scene.new(scene_params)
    end
end
