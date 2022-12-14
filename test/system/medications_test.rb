require 'application_system_test_case'

class MedicationsTest < ApplicationSystemTestCase
  setup do
    @medication = medications(:one)
  end

  test 'visiting the index' do
    visit medications_url
    assert_selector 'h1', text: 'Medications'
  end

  test 'should create medication' do
    visit medications_url
    click_on 'New medication'

    fill_in 'Comment', with: @medication.comment
    fill_in 'Date', with: @medication.date
    fill_in 'Name', with: @medication.name
    fill_in 'Symptom', with: @medication.symptom_id
    fill_in 'Time', with: @medication.time
    click_on 'Create Medication'

    assert_text 'Medication was successfully created'
    click_on 'Back'
  end

  test 'should update Medication' do
    visit medication_url(@medication)
    click_on 'Edit this medication', match: :first

    fill_in 'Comment', with: @medication.comment
    fill_in 'Date', with: @medication.date
    fill_in 'Name', with: @medication.name
    fill_in 'Symptom', with: @medication.symptom_id
    fill_in 'Time', with: @medication.time
    click_on 'Update Medication'

    assert_text 'Medication was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Medication' do
    visit medication_url(@medication)
    click_on 'Destroy this medication', match: :first

    assert_text 'Medication was successfully destroyed'
  end
end
