class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        if params[:search] != nil && params[:search] != ''
            search = params[:search]
            @userworks = Work.joins(:user).where("title LIKE ? OR question_1 LIKE ? OR question_2 LIKE ? OR question_3 LIKE ? OR question_4 LIKE ? OR question_5 LIKE ? OR answer_1 LIKE ? OR answer_2 LIKE ? OR answer_3 LIKE ? OR answer_4 LIKE ? OR answer_5 LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
          else
            @userworks = Work.all
          end

        if params[:tag_ids]
            @userworks = []
            params[:tag_ids].each do |key, value|      
                @userworks += Tag.find_by(name: key).works if value == "1"
            end
         @userworks.uniq!
        end
    end
    
end