class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end

    def create
    	@article = Article.new(params.require(:article).permit(:title,:author,:text,:validated))
    	#binding.pry
    	if @article.save
    		redirect_to @article
  		else
  			@article.save!
  			render :action => 'new'
  		end
    end

    def show
    	@article = Article.find(params[:id])
    end

    def index
    	@article = Article.all.order(title: :asc)
    end

    def edit
    	@article = Article.find(params[:id])
    end

    def update
    	@article = Article.find(params[:id])

    	if @article.update_attributes(params.require(:article).permit(:title,:text))
    		@article.save
    		redirect_to :action => 'show' , :id => @article
    	else
    		render :action => 'edit'
    	end
    end

    def destroy
    	@article = Article.find(params[:id])
    	@article.destroy
    	redirect_to articles_path
    end

end
