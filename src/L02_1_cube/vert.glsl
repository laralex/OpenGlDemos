#version 150 core

in vec3 a_position;
in vec2 a_texture_coords;

out vec2 v_texture_coords;

uniform float u_aspect_ratio;

uniform mat4 u_transform;

void main()
{
   v_texture_coords = a_texture_coords;

   gl_Position = u_transform * vec4(a_position, 1.0);
   gl_Position.y *= u_aspect_ratio;
}