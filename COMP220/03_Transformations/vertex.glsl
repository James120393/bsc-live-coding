#version 330 core

layout(location = 0) in vec3 vertexPos;
layout(location = 1) in vec3 vertexColour;

uniform mat4 transform;

out vec3 colour;

void main()
{
	gl_Position = transform * vec4(vertexPos, 1.0);
	colour = vertexColour;
}
