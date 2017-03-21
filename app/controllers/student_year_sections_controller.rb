class StudentYearSectionsController < ApplicationController
  before_action :set_student_year_section, only: [:show, :edit, :update, :destroy]

  # GET /student_year_sections
  # GET /student_year_sections.json
  def index
    @student_year_sections = StudentYearSection.all
  end

  # GET /student_year_sections/1
  # GET /student_year_sections/1.json
  def show
  end

  # GET /student_year_sections/new
  def new
    @student_year_section = StudentYearSection.new
  end

  # GET /student_year_sections/1/edit
  def edit
  end

  # POST /student_year_sections
  # POST /student_year_sections.json
  def create
    @student_year_section = StudentYearSection.new(student_year_section_params)

    respond_to do |format|
      if @student_year_section.save
        format.html { redirect_to @student_year_section, notice: 'Student year section was successfully created.' }
        format.json { render :show, status: :created, location: @student_year_section }
      else
        format.html { render :new }
        format.json { render json: @student_year_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_year_sections/1
  # PATCH/PUT /student_year_sections/1.json
  def update
    respond_to do |format|
      if @student_year_section.update(student_year_section_params)
        format.html { redirect_to @student_year_section, notice: 'Student year section was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_year_section }
      else
        format.html { render :edit }
        format.json { render json: @student_year_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_year_sections/1
  # DELETE /student_year_sections/1.json
  def destroy
    @student_year_section.destroy
    respond_to do |format|
      format.html { redirect_to student_year_sections_url, notice: 'Student year section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_year_section
      @student_year_section = StudentYearSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_year_section_params
      params.require(:student_year_section).permit(:student_lrn, :year_level, :section_name)
    end
end
