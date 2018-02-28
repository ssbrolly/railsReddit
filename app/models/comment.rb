class Comment < ApplicationRecord
  before_save :check_author
  belongs_to :topic

  def check_author
    if self.quthor.blank?
        self.author = 'anon coward'
    end
  end
  

end
