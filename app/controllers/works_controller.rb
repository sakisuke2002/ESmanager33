class WorksController < ApplicationController

    before_action :authenticate_user!, only: [:new, :create]
        def index
          if params[:search] != nil && params[:search] != ''
            search = params[:search]
            @works = Work.joins(:user).where("title LIKE ? OR question_1 LIKE ? OR question_2 LIKE ? OR question_3 LIKE ? OR question_4 LIKE ? OR question_5 LIKE ? OR answer_1 LIKE ? OR answer_2 LIKE ? OR answer_3 LIKE ? OR answer_4 LIKE ? OR answer_5 LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
          else
            @works = Work.all
          end

          if params[:tag_ids]
            @works = []
            params[:tag_ids].each do |key, value|      
              @works += Tag.find_by(name: key).works if value == "1"
            end
            @works.uniq!
          end

          if params[:tag]
            Tag.create(name: params[:tag])
          end
            
        end    

        def new
            @work = Work.new
        end
        
        def create
            work = Work.new(work_params)
            work.user_id = current_user.id
            if work.save
              redirect_to :action => "show", :id => work.id
            else
              redirect_to :action => "new"
            end
        end

        def show
            @work = Work.find(params[:id])
          end

          def edit
            @work = Work.find(params[:id])
          end
        
        def update
            work = Work.find(params[:id])
            if work.update(work_params)
              redirect_to :action => "show", :id => work.id
            else
              redirect_to :action => "new"
            end
        end

        def destroy
            work = Work.find(params[:id])
            work.destroy
            redirect_to action: :index
        end
        
        
        private
          def work_params
            params.require(:work).permit(:title, :remarks, :question_1, :answer_1, :question_2, :answer_2, :question_3, :answer_3, :question_4, :answer_4, :question_5, :answer_5, :character_limit_1, :character_limit_2, :character_limit_3, :character_limit_4, :character_limit_5, tag_ids: [])
          end
        
end