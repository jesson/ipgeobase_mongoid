# coding: utf-8

class Ip
  include Mongoid::Document
  include Mongoid::Timestamps

  field :start_ip, type: Integer
  field :end_ip, type: Integer

  belongs_to :city, class_name: 'City'
  validates_presence_of :start_ip, :end_ip, :city_id
end
