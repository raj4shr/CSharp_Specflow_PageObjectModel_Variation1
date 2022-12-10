@NotAssigned
Feature: NotAssigned

	@IC-TC-3 @JREQ-IC-1
	Scenario: Verify a new employee record is not created with invalid details
	When a user enters invalid details in the fields(not according the field requirements) then a new employee record must not be created
		Given the user is in create new employee page
		When the user enters any invalid details for the fields
		And the user creates a new employee by clicking on save button
		Then the user must be prompted with an error message encouraging him to enter valid details
		And the user must remain in create new employee page with all the fields reset to blank

	@IC-TC-2 @JREQ-IC-1
	Scenario: Verify a new employee is not created with blank fields
	When the user leaves any fields blank and tries to create a new employee. A new record must not be created and the user is prompted with a error message
		Given the user is in create new employee page
		When the user leaves any field blank
		And the user creates a new employee by clicking on save button
		Then the user must be prompted with an error message encouraging him to enter valid details
		And the user must remain in create new employee page with all the fields reset to blank

	@IC-TC-1 @JREQ-IC-1
	Scenario: Verify a new employee is created with valid details
	When the user enters valid information in the create new employee page and clicks on create new button. A new employee record should be created successfully
		Given the user is in create new employee page
		When the user enter enters valid employee information
		And the user creates a new employee by clicking on save button
		Then a new employee record must be created successfully
		And the user must remain in create new employee page with all the fields reset to blank