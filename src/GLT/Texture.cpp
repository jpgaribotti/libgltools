/*
 * File:   Texture.cpp
 * Author: juan.garibotti
 *
 * Created on 16 de junio de 2014, 14:51
 */

#include "Texture.hpp"

#include <cassert>
#include "TGA/Image.hpp"
#include "Image.hpp"

namespace glt
{
  TextureSettings::TextureSettings( GLint const& i_mipMapLevel,
                                    GLint const& i_wrapMode,
                                    GLint const& i_filterQuality,
                                    bool i_generateMipMap )
    : m_mipMapLevel     { i_mipMapLevel }
    , m_wrapMode        { i_wrapMode }
    , m_filterQuality   { i_filterQuality }
    , m_generateMipMap  { i_generateMipMap }
  {}

  GLenum const Texture::sk_target = GL_TEXTURE_2D;
  GLint const Texture::sk_border = 0;

  Texture::Texture()
      : m_name { 0 }
  {}

  Texture::Texture( Image const& i_image, TextureSettings const& i_settings )
  {
    glGenTextures( 1, &m_name );
    glBindTexture( sk_target, m_name );

    glTexImage2D( sk_target,
                  i_settings.m_mipMapLevel,
                  static_cast<GLint>(i_image.Description().m_format),
                  i_image.Description().m_width, i_image.Description().m_height,
                  sk_border,
                  i_image.Description().m_format,
                  i_image.Description().m_type,
                  i_image.Data() );

    glTexParameteri( sk_target, GL_TEXTURE_WRAP_S, i_settings.m_wrapMode );
    glTexParameteri( sk_target, GL_TEXTURE_WRAP_T, i_settings.m_wrapMode );
    glTexParameteri( sk_target, GL_TEXTURE_MIN_FILTER, i_settings.m_filterQuality );
    glTexParameteri( sk_target, GL_TEXTURE_MAG_FILTER, i_settings.m_filterQuality );

    if ( i_settings.m_generateMipMap )
    {
      assert( i_settings.m_mipMapLevel == 0 );
      glGenerateMipmap( sk_target );
    }

    glBindTexture( sk_target, 0 );
  }

  static GLenum tgaFormatToGLFormat( tga::PixelFormat const& i_format )
  {
    switch ( i_format )
    {
      case tga::PixelFormat::e_ARGB32:    return GL_RGBA;
      case tga::PixelFormat::e_RGB24:     return GL_RGB;
      case tga::PixelFormat::e_ABW16:     return GL_RG;
      case tga::PixelFormat::e_BW8:       return GL_RED;
      default:                            throw 0;
    }
  }

  Texture::Texture( tga::Image c_image, TextureSettings const& i_settings )
  {
    glGenTextures( 1, &m_name );
    glBindTexture( sk_target, m_name );

    auto const glFormat = tgaFormatToGLFormat( c_image.GetPixelFormat() );
    auto const dataType = GL_UNSIGNED_BYTE;
    if ( glFormat == GL_RG || glFormat == GL_RGBA )
    {
      c_image.FlipAlpha();
    }

    glTexImage2D( sk_target,
                  i_settings.m_mipMapLevel,
                  static_cast<GLint>(glFormat),
                  c_image.GetWidth(), c_image.GetHeight(),
                  sk_border,
                  glFormat,
                  dataType,
                  c_image.Data() );

    glTexParameteri( sk_target, GL_TEXTURE_WRAP_S, i_settings.m_wrapMode );
    glTexParameteri( sk_target, GL_TEXTURE_WRAP_T, i_settings.m_wrapMode );
    glTexParameteri( sk_target, GL_TEXTURE_MIN_FILTER, i_settings.m_filterQuality );
    glTexParameteri( sk_target, GL_TEXTURE_MAG_FILTER, i_settings.m_filterQuality );

    if ( i_settings.m_generateMipMap )
    {
      assert( i_settings.m_mipMapLevel == 0 );
      glGenerateMipmap( sk_target );
    }

    glBindTexture( sk_target, 0 );
  }

  Texture::Texture( Texture && io_texture )
    : m_name { io_texture.m_name }
  {
    io_texture.m_name = 0;
  }

  Texture & Texture::operator=( Texture && io_texture )
  {
    glDeleteTextures( 1, &m_name );
    m_name = io_texture.m_name;
    io_texture.m_name = 0;

    return *this;
  }

  Texture::~Texture()
  {
    glDeleteTextures( 1, &m_name );
  }

  GLuint const& Texture::Name() const
  {
    return m_name;
  }
}