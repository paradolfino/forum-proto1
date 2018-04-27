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
        if @scene.save(scene_params)
            redirect '/' 
        else
            render 'new'
        end
    end
    
    def edit
        
    end
    
    def update
        if @scene.update(scene_params)
           redirect '/' 
        else
            render 'edit'
        end
    end
    
    def destroy
        @scene.destroy
    end
    
    private
    
        def scene_params
           params.require(:scene).permit(:name, :description) 
        end
    
        def set_scene
            
        end
    
end
