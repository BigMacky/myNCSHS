class TeacherSubjectSectionsController < ApplicationController
  before_action :set_teacher_subject_section, only: [:show, :edit, :update, :destroy]

  # GET /teacher_subject_sections
  # GET /teacher_subject_sections.json
  def index
    @teacher_subject_sections = TeacherSubjectSection.all
  end

  # GET /teacher_subject_sections/1
  # GET /teacher_subject_sections/1.json
  def show
  end

  # GET /teacher_subject_sections/new
  def new
    @teacher_subject_section = TeacherSubjectSection.new
  end

  # GET /teacher_subject_sections/1/edit
  def edit
  end

  # POST /teacher_subject_sections
  # POST /teacher_subject_sections.json
  def create
    @teacher_subject_section = TeacherSubjectSection.new(teacher_subject_section_params)

    respond_to do |format|
      if @teacher_subject_section.save
        format.html { redirect_to @teacher_subject_section, notice: 'Teacher subject section was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_subject_section }
      else
        format.html { render :new }
        format.json { render json: @teacher_subject_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_subject_sections/1
  # PATCH/PUT /teacher_subject_sections/1.json
  def update
    respond_to do |format|
      if @teacher_subject_section.update(teacher_subject_section_params)
        format.html { redirect_to @teacher_subject_section, notice: 'Teacher subject section was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_subject_section }
      else
        format.html { render :edit }
        format.json { render json: @teacher_subject_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_subject_sections/1
  # DELETE /teacher_subject_sections/1.json
  def destroy
    @teacher_subject_section.destroy
    respond_to do |format|
      format.html { redirect_to teacher_subject_sections_url, notice: 'Teacher subject section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_subject_section
      @teacher_subject_section = TeacherSubjectSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_subject_section_params
      params.require(:teacher_subject_section).permit(:teacher_id, :subject_title, :section_name)
    end
end
