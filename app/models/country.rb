# coding: utf-8

class Country
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :code, type: String

  has_many :cities, class_name: 'City'

  validates_presence_of :name
end
