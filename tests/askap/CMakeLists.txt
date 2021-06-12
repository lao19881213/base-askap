add_executable(taskap taskap.cc)
target_link_libraries(taskap 
	askap_askap
	${CPPUNIT_LIBRARY}
)
add_test(
	NAME taskap
	COMMAND taskap
	)
