require 'test_helper'

class SymptomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @symptom = symptoms(:one)
  end

  test 'should get index' do
    get symptoms_url, as: :json
    assert_response :success
  end

  test 'should create symptom' do
    assert_difference('Symptom.count') do
      post symptoms_url,
           params: { symptom: { description: @symptom.description, name: @symptom.name, treatment: @symptom.treatment } }, as: :json
    end

    assert_response :created
  end

  test 'should show symptom' do
    get symptom_url(@symptom), as: :json
    assert_response :success
  end

  test 'should update symptom' do
    patch symptom_url(@symptom),
          params: { symptom: { description: @symptom.description, name: @symptom.name, treatment: @symptom.treatment } }, as: :json
    assert_response :success
  end

  test 'should destroy symptom' do
    assert_difference('Symptom.count', -1) do
      delete symptom_url(@symptom), as: :json
    end

    assert_response :no_content
  end
end
