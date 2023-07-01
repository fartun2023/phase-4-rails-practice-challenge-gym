class MembershipsController < ApplicationController
    def create
        membership = Membership.new(membership_params)
        if membership.save
          render json: membership, status: :created
        else
          render json: { error: membership.errors.full_messages }, status: :unprocessable_entity
        end
      end
    
      def destroy
        membership = Membership.find(params[:id])
        membership.destroy
        head :no_content
      end
    
      private
    
      def membership_params
        params.require(:membership).permit(:gym_id, :client_id, :charge)
      end
    end
