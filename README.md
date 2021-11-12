# README

# questions
|Column|Type|Options|
|-------------|------------|---------------------|
|id           |integer     |not null, primary key|
|question_text|text        |                     |
|type         |string      |                     |
|created_at   |datetime    |not null             |
|updated_at   |datetime    |not null             |
### Association
has_many :answer_options, dependent: :destroy 

# choices
|Column       |Type        |Options              |
|-------------|------------|---------------------|
|id           |integer     |not null, primary key|
|answer_text  |text        |                     |
|question_id  |integer     |                     |
|created_at   |datetime    |not null             |
|updated_at   |datetime    |not null             |
### Association
belongs_to :question
validates :answer_text, presence: true, allow_blank: false

#  question_answers
|Column           |Type        |Options              |
|-----------------|------------|---------------------|
|id               |integer     |not null, primary key|
|question_id      |integer     |                     |
|answer_option_ids|text        |                     |
|user_id          |integer     |                     |
### Association
serialize :answer_option_ids
belongs_to :question
belongs_to :user
validates_presence_of :question_id, :user_id