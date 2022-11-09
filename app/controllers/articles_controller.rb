class ArticlesController < ApplicationController
    
    def show
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(title: params[:article][:title], content: params[:article][:content])
        render json: @article
    end
    
    def edit
        @article = Article.find(params[:id])
        puts "\n\n\n #{@article.persisted?} \n\n\n"
    end
    
    def new
        @article = Article.new
    end

    def create
        @article = Article.create(title: params[:article][:title], content: params[:article][:content])
        render json: @article
    end
end
