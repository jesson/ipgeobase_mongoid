# coding: utf-8

class City
  include Mongoid::Document
  include Mongoid::Timestamps

  field :geo_id, type: Integer
  index({ geo_id: 1 })

  field :city, type: String
  field :region, type: String
  field :district, type: String

  field :lat, type: Float
  field :lon, type: Float


  belongs_to :country, class_name: 'Country'
  has_many :ips, class_name: 'Ip'

  validates_presence_of :city, :country, :geo_id
end
