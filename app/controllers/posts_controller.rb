class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
       @posts=current_user.posts.all
    end

    def show_post
        @posts=current_user.posts.order('created_at DESC')
        render 'gallery'
    end

    def new
        @post=Post.new()
    end

    def create
        @post=current_user.posts.build(post_params)
        if @post.save
            redirect_to root_path
        else
            redirect_to 'new'
        end
    end

    def edit
    end

    def update
        if @post.update(post_params)
            flash[:success]="Image is updated"
            redirect_to posts_path
        else
            flash[:danger]="can't update the image"
            render 'edit'
        end
    end

    def show
    end

    def destroy
        if @post.destroy
            flash[:success]="Your image is deleted successfully"
            redirect_to posts_show_post_path
        else
            flash[:danger]="Can't delete the image"
            redirect_to new_post_path
        end
    end

    private
    def post_params
        params.require(:post).permit({image: []}, :remove_image, :image_cache)
    end

    def set_post
        @post=current_user.posts.find(params[:id])
    end
     
end
