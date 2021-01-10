# frozen_string_literal: true

module Api
  module V1
    class ArticlesController < BaseController
      before_action :set_article, only: :show

      def index
        articles = Article.all
        json_string = ArticleSerializer.new(articles).serialized_json
        render json: json_string
      end

      def show
        options = { include: %i[user 'user.name' 'user.email'] }
        json_string = ArticleSerializer.new(@article, options).serialized_json
        render json: json_string
      end

      private

      def set_article
        @article = Article.find(params[:id])
      end
    end
  end
end
