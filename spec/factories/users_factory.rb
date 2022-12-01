# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Test' }
    email { 'test123@testemail.com' }
    password { 'Secret123!@#' }
    password_confirmation { 'Secret123!@#' }
  end
end
