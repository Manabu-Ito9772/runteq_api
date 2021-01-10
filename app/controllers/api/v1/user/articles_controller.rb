module Api
  module V1
    class User::ArticlesController < BaseController
      # before_action :set_article, only: [:show, :update, :destroy]
      before_action :set_articles, only: :index
      before_action :set_article, only: %i[show update destroy]

      # GET /api/v1/user/articles
      def index
        json_string = ArticleSerializer.new(@articles).serialized_json
        render json: json_string
      end

      # GET /api/v1/user/articles/1
      def show
        options = { include: %i[user 'user.name' 'user.email'] }
        json_string = ArticleSerializer.new(@article, options).serialized_json
        render json: json_string
      end

      # POST /api/v1/user/articles
      def create
        article = current_user.articles.build(article_params)

        if article.save
          json_string = ArticleSerializer.new(article).serialized_json
          render json: json_string
        else
          render_400(nil, article.errors.full_messages)
        end
      end

      # PATCH/PUT /api/v1/user/articles/1
      def update
        if @article.update(article_params)
          json_string = ArticleSerializer.new(@article).serialized_json
          render json: json_string
        else
          render_400(nil, @article.errors.full_messages)
        end
      end

      # DELETE /api/v1/user/articles/1
      def destroy
        @article.destroy!
        response = {
          success: 'The article has been deleted'
        }

        render json: response, status: :ok
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_article
        @article = current_user.articles.find(params[:id])
      end

      def set_articles
        @articles = current_user.articles
      end

      # Only allow a trusted parameter "white list" through.
      def article_params
        params.require(:article).permit(:title, :contents)
      end
    end
  end
end
