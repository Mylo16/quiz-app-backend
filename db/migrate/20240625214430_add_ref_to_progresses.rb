class AddRefToProgresses < ActiveRecord::Migration[7.0]
  def change
    add_reference :progresses, :user, null: false, foreign_key: true
    add_reference :progresses, :course, null: false, foreign_key: true
    add_reference :progresses, :quiz, null: false, foreign_key: true
    add_index :progresses, [:user_id, :quiz_id], unique: true, name: 'index_progresses_on_user_id_and_quiz_id'
    add_reference :enrollments, :user, foreign_key: true
    add_reference :enrollments, :course, foreign_key: true
    add_index :enrollments, [:user_id, :course_id], unique: true, name: 'index_enrollments_on_user_id_and_course_id'
    add_reference :materials, :course, foreign_key: true
    add_reference :options, :question, foreign_key: true
    add_index :options, [:option_text, :question_id], unique: true, name: 'index_options_on_option_text_and_question_id'
    add_reference :questions, :quiz, foreign_key: true
    add_reference :quizzes, :course, foreign_key: true
  end
end
