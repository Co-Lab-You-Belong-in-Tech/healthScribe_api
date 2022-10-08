require 'test_helper'

class DiseasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disease = diseases(:one)
  end

  test 'should get index' do
    get diseases_url, as: :json
    assert_response :success
  end

  test 'should create disease' do
    assert_difference('Disease.count') do
      post diseases_url,
           params: { disease: { description: @disease.description, name: @disease.name, treatment: @disease.treatment } }, as: :json
    end

    assert_response :created
  end

  test 'should show disease' do
    get disease_url(@disease), as: :json
    assert_response :success
  end

  test 'should update disease' do
    patch disease_url(@disease),
          params: { disease: { description: @disease.description, name: @disease.name, treatment: @disease.treatment } }, as: :json
    assert_response :success
  end

  test 'should destroy disease' do
    assert_difference('Disease.count', -1) do
      delete disease_url(@disease), as: :json
    end

    assert_response :no_content
  end
end
