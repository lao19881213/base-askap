add_executable(tprofile tprofile.cc)
target_link_libraries(tprofile 
	askap_askap
	${CPPUNIT_LIBRARY}
)
add_test(
	NAME tprofile
	COMMAND tprofile
	)
