# translation of the bash script in cmake
# run the tests
execute_process(COMMAND ctest --parallel 3 -D ExperimentalTest
--no-compress-output ERROR_QUIET)
# extract the hash 
file(STRINGS "Testing/TAG" hash LIMIT_COUNT 1)
# do the copy
execute_process(COMMAND ${CMAKE_COMMAND} -E copy  "Testing/${hash}/Test.xml"
CTestResults.xml)
