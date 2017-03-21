class TeacherAdviseClassesController < ApplicationController
  before_action :set_teacher_advise_class, only: [:show, :edit, :update, :destroy]

  # GET /teacher_advise_classes
  # GET /teacher_advise_classes.json
  def index
    @teacher_advise_classes = TeacherAdviseClass.all
  end

  # GET /teacher_advise_classes/1
  # GET /teacher_advise_classes/1.json
  def show
  end

  # GET /teacher_advise_classes/new
  def new
    @teacher_advise_class = TeacherAdviseClass.new
  end

  # GET /teacher_advise_classes/1/edit
  def edit
  end

  # POST /teacher_advise_classes
  # POST /teacher_advise_classes.json
  def create
    @teacher_advise_class = TeacherAdviseClass.new(teacher_advise_class_params)

    respond_to do |format|
      if @teacher_advise_class.save
        format.html { redirect_to @teacher_advise_class, notice: 'Teacher advise class was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_advise_class }
      else
        format.html { render :new }
        format.json { render json: @teacher_advise_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_advise_classes/1
  # PATCH/PUT /teacher_advise_classes/1.json
  def update
    respond_to do |format|
      if @teacher_advise_class.update(teacher_advise_class_params)
        format.html { redirect_to @teacher_advise_class, notice: 'Teacher advise class was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_advise_class }
      else
        format.html { render :edit }
        format.json { render json: @teacher_advise_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_advise_classes/1
  # DELETE /teacher_advise_classes/1.json
  def destroy
    @teacher_advise_class.destroy
    respond_to do |format|
      format.html { redirect_to teacher_advise_classes_url, notice: 'Teacher advise class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_advise_class
      @teacher_advise_class = TeacherAdviseClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_advise_class_params
      params.require(:teacher_advise_class).permit(:teacher_id, :section_name)
    end
end
