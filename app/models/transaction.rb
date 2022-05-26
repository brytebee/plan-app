class Transaction < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  belongs_to :category

  validates :name, presence: true
  validates :amount, presence: true, numericality: { money: true, greater_than_or_equal_to: 0 }

  def self.total_amount(transactions)
    sum = 0
    transactions.all.each do |t|
      sum += t.amount
    end
    sum
  end
end
