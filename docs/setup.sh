#!/bin/bash
mvn archetype:generate											\
	-DarchetypeGroupId=com.isortegah							\
	-DarchetypeArtifactId=api-rest-full-dropwizard-archetype	\
	-DarchetypeVersion=0.1.0-SNAPSHOT							\
	-DgroupId=com.isortegah.apirest								\
	-DartifactId=api-rest-demo									\
	-Dname=api-rest-demo