# coding: utf-8

class IpgeobaseCity
  include Mongoid::Document

  field :geo_id, type: Integer
  index { geo_id: 1 }

  field :city, type: String
  field :region, type: String
  field :district, type: String

  field :lat, type: Float
  field :lon, type: Float


  belongs_to :country, class_name: 'IpgeobaseCountry'
  has_many :ips, class_name: 'IpgeobaseIp'

  validates_presence_of :city, :country, :geo_id
end
