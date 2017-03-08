class Article < ActiveRecord::Base
  belongs_to :category

  validates_inclusion_of :is_published, :in => [true, false]
  validates :title, :presence => { message: "Titulek musi byt zadan" }
  validates :text, :presence => { message: "Text musi byt vyplnen" }

  def select_error(errors, name)
    errors.full_messages.each do |error|

    end
  end
end
