#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/Frame.o \
	${OBJECTDIR}/src/GLMatrix.o \
	${OBJECTDIR}/src/GeometryTransform.o \
	${OBJECTDIR}/src/MVPMatrix.o \
	${OBJECTDIR}/src/MatrixStack.o \
	${OBJECTDIR}/src/Model.o \
	${OBJECTDIR}/src/Shader.o \
	${OBJECTDIR}/src/Triangle.o \
	${OBJECTDIR}/src/Vertex.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-Wfatal-errors -Wall -Wextra -pedantic -Winit-self -Wmissing-include-dirs -Wswitch-default -Wswitch-enum -Wfloat-equal -Wshadow -Wcast-qual -Wcast-align -Wwrite-strings -Wconversion -Wsign-conversion -Wlogical-op -Wmissing-declarations -Wmissing-noreturn -Wmissing-format-attribute -Wpacked -Wpadded -Wredundant-decls -Wunreachable-code
CXXFLAGS=-Wfatal-errors -Wall -Wextra -pedantic -Winit-self -Wmissing-include-dirs -Wswitch-default -Wswitch-enum -Wfloat-equal -Wshadow -Wcast-qual -Wcast-align -Wwrite-strings -Wconversion -Wsign-conversion -Wlogical-op -Wmissing-declarations -Wmissing-noreturn -Wmissing-format-attribute -Wpacked -Wpadded -Wredundant-decls -Wunreachable-code

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk lib/liblibgltools-d.a

lib/liblibgltools-d.a: ${OBJECTFILES}
	${MKDIR} -p lib
	${RM} lib/liblibgltools-d.a
	${AR} -rv lib/liblibgltools-d.a ${OBJECTFILES} 
	$(RANLIB) lib/liblibgltools-d.a

${OBJECTDIR}/src/Frame.o: src/Frame.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Frame.o src/Frame.cpp

${OBJECTDIR}/src/GLMatrix.o: src/GLMatrix.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GLMatrix.o src/GLMatrix.cpp

${OBJECTDIR}/src/GeometryTransform.o: src/GeometryTransform.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/GeometryTransform.o src/GeometryTransform.cpp

${OBJECTDIR}/src/MVPMatrix.o: src/MVPMatrix.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/MVPMatrix.o src/MVPMatrix.cpp

${OBJECTDIR}/src/MatrixStack.o: src/MatrixStack.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/MatrixStack.o src/MatrixStack.cpp

${OBJECTDIR}/src/Model.o: src/Model.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Model.o src/Model.cpp

${OBJECTDIR}/src/Shader.o: src/Shader.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Shader.o src/Shader.cpp

${OBJECTDIR}/src/Triangle.o: src/Triangle.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Triangle.o src/Triangle.cpp

${OBJECTDIR}/src/Vertex.o: src/Vertex.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -Wall -Iinclude -I../libmatrix/include -I../libobj/include -I../libvector/include -I/E/lib/glew-1.10.0/include -I../../../../../lib/glew-1.10.0/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/Vertex.o src/Vertex.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} lib/liblibgltools-d.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
