class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_filter :current_user

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  #def login
  #end

  def home
  #    @students = Student.where("student_lrn = ?", params[:search_lrn])
  #  if @students == :nil then
  #    redirect_to "/students/login"
    #else
      #redirect_to "/students/#{student.id}/home"
  #  end
    #@student = Student.find_by(student_lrn: session[:student_lrn])
    @student = current_user
  end

  def grades
    @student = current_user
  end

  def schedule
    @student = current_user
    @studentgradesubjects = StudentGradeSubject.all.where("student_lrn = ?", @student.student_lrn).where("quarter = ?", 1)
    #@subjects = Subject.all.where("subject_title = ?" @studentgradesubjects.all.subject_title) 
  end

  def classmate
    @student = current_user
    @studentsection = StudentYearSection.all.where("student_lrn = ? AND year_level = ?", @student.student_lrn, @student.year_level).first
    @section = StudentYearSection.all.where("section_name = ?", @studentsection.section_name)
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:student_lrn, :first_name, :middle_name, :last_name, :age, :birthdate, :religion, :contact_no, :year_level, :password)
    end
end
