class Task < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, presence: true
	validates :content, presence: true

  default_scope -> { order(created_at: :desc) }

  auto_html_for :content do
    html_escape
    image
    youtube(:width => "100%", :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end