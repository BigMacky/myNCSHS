class StudentGradeSubjectsController < ApplicationController
  before_action :set_student_grade_subject, only: [:show, :edit, :update, :destroy]

  # GET /student_grade_subjects
  # GET /student_grade_subjects.json
  def index
    @student_grade_subjects = StudentGradeSubject.all
  end

  # GET /student_grade_subjects/1
  # GET /student_grade_subjects/1.json
  def show
  end

  # GET /student_grade_subjects/new
  def new
    @student_grade_subject = StudentGradeSubject.new
  end

  # GET /student_grade_subjects/1/edit
  def edit
  end

  # POST /student_grade_subjects
  # POST /student_grade_subjects.json
  def create
    @student_grade_subject = StudentGradeSubject.new(student_grade_subject_params)

    respond_to do |format|
      if @student_grade_subject.save
        format.html { redirect_to @student_grade_subject, notice: 'Student grade subject was successfully created.' }
        format.json { render :show, status: :created, location: @student_grade_subject }
      else
        format.html { render :new }
        format.json { render json: @student_grade_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_grade_subjects/1
  # PATCH/PUT /student_grade_subjects/1.json
  def update
    respond_to do |format|
      if @student_grade_subject.update(student_grade_subject_params)
        format.html { redirect_to @student_grade_subject, notice: 'Student grade subject was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_grade_subject }
      else
        format.html { render :edit }
        format.json { render json: @student_grade_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_grade_subjects/1
  # DELETE /student_grade_subjects/1.json
  def destroy
    @student_grade_subject.destroy
    respond_to do |format|
      format.html { redirect_to student_grade_subjects_url, notice: 'Student grade subject was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_grade_subject
      @student_grade_subject = StudentGradeSubject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_grade_subject_params
      params.require(:student_grade_subject).permit(:student_lrn, :subject_title, :quarter, :grade)
    end
end
