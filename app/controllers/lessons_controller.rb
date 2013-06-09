class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    chapter_num = (params[:chapter].nil? ? 1 : params[:chapter])
    @chapter = Chapter.find_by_lesson_id_and_number(@lesson.id, chapter_num)
    @last_chapter = (chapter_num.to_i == Lesson.count.to_i)
  end
end
