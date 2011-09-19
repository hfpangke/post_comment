class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    
    respond_to do |format|
      format.html
      format.json { render json: @comments }
    end
  end
  
  def new
    @comment = Comment.new
    
    respond_to do |format|
      format.html
      format.json { render json: @comemnt }
   
    
    end
  end
  
  def show
    @com = Comment.find(params[:id])
    @comment = Comment.new

    @comment.save
    
    respond_to do |format|
      format.html
      format.json { render json: @comment }
    end
  end
  
  def edit
    @comment = Comment.find(params[:id])
    
  end
  
  def create
    @comment = Comment.new(params[:comment])
    @comment.post_id = params[:post_id]
    @comment.valuate = params[:valuate]
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to :back, notice: 'Post was successfully created.' }
        format.json { render json: @comment, status: :created, location: @comment }
      else
        format.html { redirect_to :back,notice: "No valuate" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    @comment = Comment.find(params[:comment])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: "Post was successfully created" }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end
end
