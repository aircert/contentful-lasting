require 'faker'

Series.delete_all
Lesson.delete_all


rails_series = Series.create(name: "Ruby on Rails")


rails_lesson_one = Lesson.create(name: "Setup", video_url: "https://gooogle.com")
rails_lesson_two = Lesson.create(name: "ActiveRecord", video_url: "https://gooogle.com")
rails_lesson_three = Lesson.create(name: "Migrations", video_url: "https://gooogle.com")
rails_lesson_four = Lesson.create(name: "Controllers", video_url: "https://gooogle.com")

rails_series.lessons << rails_lesson_one
rails_series.lessons << rails_lesson_two
rails_series.lessons << rails_lesson_three
rails_series.lessons << rails_lesson_four