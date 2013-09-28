/*
 * File:   GLMatrix.hpp
 * Author: JoPe
 *
 * Created on 22 de septiembre de 2013, 18:43
 */

#ifndef GLMATRIX_HPP
#define	GLMATRIX_HPP

#include "GL/glew.h"
#include "MAT/Matrix4.hpp"

namespace glt
{
    struct GLMatrix
    {
        GLfloat m_data[16];

        GLMatrix() = default;
        GLMatrix( mat::Matrix4 const& i_matrix );
    };
}

#endif	/* GLMATRIX_HPP */

