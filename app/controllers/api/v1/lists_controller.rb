module Api::V1
  class ListsController < ApplicationController
    before_action :set_list, only: [:show, :update, :destroy]

    # GET /lists
    def index
      render json: current_user.lists
    end

    # GET /lists/1
    def show
      render json: @list
    end

    # POST /lists
    def create
      @list = current_user.lists.build(list_params)

      if @list.save
        render json: @list, status: :created
      else
        render json: @list.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /lists/1
    def update
      if @list.update(list_params)
        render json: @list
      else
        render json: @list.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @list.destroy
      head :no_content
    end

    private

      def set_list
        @list = current_user.lists.find(params[:id])
      end

      def list_params
        params.require(:list).permit(:name)
      end

  end
end
