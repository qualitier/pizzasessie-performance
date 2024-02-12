https://lakitna.medium.com/automatically-detecting-redundant-tests-be9151fdd855:


The text discusses an experiment aimed at automatically detecting redundant tests in test suites using mutation testing. Here's a summary of the key points:

Objective: The experiment aims to identify and remove redundant tests from test suites to reduce test execution time and maintenance load.

Definition of Redundant Test: A redundant test is one that adds no value to the test suite and cannot fail, or duplicates another test covering the same logic.

Hypothesis: The hypothesis states that infallible and duplicate tests never add value to a test suite or the quality of the application under test.

Mutation Testing: Mutation testing involves automatically creating bugs (mutants) in source code and checking if unit tests can detect them. This method helps identify redundant tests by revealing which mutants each test covers.

Experiment Setup:

The open-source project Express was chosen for testing, as it has a comprehensive unit test suite.
Stryker, a mutation test runner, was used to introduce mutation testing to the Express project.
Test Results:

Baseline Test: Showed a high mutation coverage of 88% but revealed numerous tests that never failed and many duplicate tests.
Skip Unfailed Tests Test: Disabling tests that never failed had minimal impact on mutation coverage.
Skip Some Duplicate Tests Test: Disabling some duplicate tests also had minimal impact on mutation coverage.
Conclusion:

The experiment data supports the hypothesis that removing redundant tests does not significantly impact test suite quality.
The usefulness of building a tool to automate the detection of redundant tests is debatable due to the CPU-intensive nature of mutation testing.
Running such a tool occasionally, perhaps once a year, for test suite maintenance could be beneficial.
Questions Raised:

The text concludes by asking whether it's worth investing time in building the tool and what potential use cases it might have.
Overall, the experiment suggests that while removing redundant tests may not significantly impact test suite quality, the feasibility and practicality of automating this process require further consideration.