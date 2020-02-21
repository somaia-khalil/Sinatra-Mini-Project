class Tree < ActiveRecord::Base
    has_many :user_trees
    has_many :users, through: :user_tree
    end