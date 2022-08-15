
# Final project for ITF Manual Testing Course

The scope of the final project for ITF Manual Testing Course is to use all gained knowledge throught the course and apply them in practice, using a live application.

Application under test: <a href="https://opensource-demo.orangehrmlive.com/" target="_blank">OrangeHRM</a>

API Documentation: [OrangeHRM API](https://orangehrm.github.io/orangehrm-api-doc/)

The final project will be split into 2 sections: **Testing section and SQL section.**

Tools used: JIRA, Zephyr Squad, Postman, MySQL Workbench.

# Functional specifications

The Story below was created in Jira to describe functional specification.
Due to the fact that [OrangeHRM Specification](https://www.orangehrm.com/assets/Files/Complete-Administrative-User-Guide.pdf?url=/Files/Complete-Administrative-User-Guide.pdf) does not include the Recruitment module, the Team created an Jira Static Analysis issue.
The specification would be created ASAP in order to accomplish entry criteria in Test Planning.

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/2695545081a617b1405e6b8e13962374f2ed1d47/Functional%20Specification.png" width="660" height="1000">


## 1 Testing section

### 1.1 Test Planning

The Test Plan is designed to describe all details of testing for the Recruitment module from the OrangeHRM application.

The plan identifies the items to be tested, the features to be tested, the types of testing to be performed, the team responsible for testing, the resources and schedule required to complete testing, and the risks associated with the plan.

#### 1.1.1 Roles assigned to the project and persons allocated

- Project manager - Dumitru Berteanu
- Product owner - Mihai Sandu
- Software developer - Mihaela Dumitrescu
- QA Engineer - Roxana Vatrici

#### 1.1.2 Entry criteria defined

- Functional specifications are defined (based on issue https://roxanavatrici.atlassian.net/browse/MET-3)
- Roles needed for the project are allocated
- Initial project risks were detected and mitigated

#### 1.1.3 Exit criteria defined

- Number of unresolved bugs is insignificant or they have low priority
- All tests have been executed
- All resolved bugs have been re-tested and approved by the QA team
- Deadline was reached
- No detected major risk remained un-mitigated
- Exploratory regression testing must be performed on the Recruitment module.

#### 1.1.4 Test scope

- **Tests in scope:** All the feature of Recruitment module which were defined in software requirement specs need to be tested: functional testing, GUI testing and API testing. Also, compatibility testing with multiple browsers.
- **Tests not in scope:** Performance testing, integrations of the dependents module with other modules.

#### 1.1.5 Risks detected

- **Project risks:** Lack of experience of the QA team, short deadline of Zephyr Squad trial, unavailability of test environment.
- **Product risks:** validation constraints on the fields might be too restrictive to the end-user.

#### 1.1.6 Evaluating entry criteria

The entry criterias defined in the Test Planning phase have been achieved and the test process can continue, due to MET-3 issue --> SOLVED!

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/2870098fd29e81df078aa3403271a0303841dc9f/StaticAnalysysIssue.png" width="660" height="900">

### 1.2 Test Monitoring and Control

- The report was generated to reflect the current status of the testing process. 
- There were implemented and executed 7 test cases from 20 test cases planned, on 31th of July 2022.
- During Execution, one bug was found, which is Low Priority, and it is in Progress on Development side.

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/62c96d3681c801ed81ab8b7424b0869a33ea9c9e/MonitoringControl.png" width="1200" height="350">

### 1.3 Test Analysis

The testing process will be executed based on the requirements for the Recruitment module. 
The following test conditions were found:
- Enter data only for mandatory fields and check that the dependant is created/updated
- Enter data for all available fields and check that the dependant is created/updated
- Leave mandatory fields empty and check that the dependant cannot be created/updated
- Check if all the Candidates were added correctly in the list
- Check all validation constraints for the fields

### 1.4 Test Design

Functional test cases were created in Zephyr Squad. Based on the analysis of the specifications, the test design techniques used for generating test cases are:
- boundary value analysis
- equivalence partitioning
- use case testing.
 
  **List of Test Cases**

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/df1bd96281c4d3fa3c238126bf38e5b4fad043da/TestCases.png" width="660" height="700">

The test cases with steps can be viewed here: 
<a href="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/2f589978b77e009afad271e87b15a84d9c6f0b06/CandidateTestCases.pdf" target="_blank">CandidateTestCases.pdf</a>

### 1.5 Test Implementation

The following elements are needed to be ready before the test execution phase begins:

- Testing environment is up and running: <a href="https://opensource-demo.orangehrmlive.com/" target="_blank">OrangeHRM</a>
- Access to the testing environment is given: Username : Admin | Password : admin123
- Cycle summary was created
- Test cases were added to the cycle summary
- Only authorization token was created for accessing the API, due to lack of API documentation for Recruitment module.

### 1.6 Test Execution

- Test cases are executed on the created test Cycle summary: <a href="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/25bba452baad27619466b54f4501b1997ae283fd/CandidatesCycleSummary.pdf" target="_blank">CandidatesCycleSummary.pdf</a> 
- Bugs have been created based on the failed tests. The complete bug reports can be found here: <a href="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/8a1724e5af5387d93863ffa4334e72f34875012c/BUGS.pdf" target="_blank">BUGS.pdf</a> 

> Nothing happens when click ENTER while being within the input fields

> The message "Should be less than 250 characters" overlaps the Comment text

- [OUauth JSON file](https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/bcbc6e6d049a798a90cf9635022211a193dd0450/OangeHRM_Recruitment.postman_collection.json)
- Full regression testing is needed after the bugs are fixed

### 1.7 Test Completion

- As the Exit criteria were met and satisfied as mentioned in the appropriate section, this feature is suggested to ‘Go Live’ by the Testing team
- The traceability matrix, below, was generated and also can be found here: <a href="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/28d588ccd2ebcd1931f82732547f18357d33e9ef/ForwardTraceabilityMatrix.xlsx" target="_blank">ForwardTraceabilityMatrix.xlsx</a> 

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/28d588ccd2ebcd1931f82732547f18357d33e9ef/TraceabilityMatrix.png" width="1100" height="900">

- Test execution chart was generated, the final report shows that a number 2 tests have failed of a total of 20
- A number of 20 test cases were planned for execution and all of them were executed
- A number of 2 total bugs were found, from which the priority is: 1 is low and 1 is medium

<img src="https://github.com/roxanavatrici/Manual_Testing_Portofolio/blob/28d588ccd2ebcd1931f82732547f18357d33e9ef/TestExecutionReport.png" width="600" height="600">

## 2 SQL section
A database for recruitment was created with a table for candidates and different queries inside Candidates.sql were performed.
