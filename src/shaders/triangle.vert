#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aColor;

out vec3 vertexColor;

void main()
{
    vec3 inverted_pos = vec3(aPos.x, 0 - aPos.y, aPos.z);
    gl_Position = vec4(inverted_pos, 1.0);
    vertexColor = aColor;
}
