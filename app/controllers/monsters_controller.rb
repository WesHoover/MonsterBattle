class MonstersController < ApplicationController
    def index
        @monsters = Monster.all
    end

	def new
        #Makes a new form, but does not save to database
        @monster = Monster.new
    end

    def create
        #Makes and saves new form to database
        @monster = Monster.new(monster_params)
        @monster.user_id = current_user.id
        @monster.save

        respond_to do |format|
            if @monster.save
                format.html { redirect_to @monster, notice: 'Form was successfully created.' }
                format.json { render :show, status: :created, location: @monster }
            else
                format.html { render :new }
                format.json { render json: @monster.errors, status: :unprocessable_entity }
            end
        end
    end

    def show
        @monster = Monster.find(params[:id])
    end

    def update
        @monster = Monster.find(params[:id])
        respond_to do |format|
            if @monster.update(monster_params)
                format.html { redirect_to @monster, notice: 'Form was successfully updated.' }
                format.json { render :show, status: :ok, location: @monster }
            else
                format.html { render :edit }
                format.json { render json: @monster.errors, status: :unprocessable_entity }
              end
        end
    end

    def destroy
        #Destroys form
        @monster.destroy
        respond_to do |format|
          format.html { redirect_to users_url, notice: 'Form was successfully destroyed.' }
          format.json { head :no_content }
        end
    end


end
