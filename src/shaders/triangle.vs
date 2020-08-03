#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 TexCoord;
out float colorStrength;

uniform vec3 pulse_position;
uniform float pulse_radius;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform vec3 world_pos;

void main()
{
	gl_Position = projection * view * model * vec4(aPos, 1.0);
	TexCoord = vec2(aTexCoord.x, aTexCoord.y);
	float dist_to_pulse = distance(pulse_position, world_pos);
	if (pulse_radius != 0.0f) {
		colorStrength = clamp(1/pow((dist_to_pulse / pulse_radius), 2), 0.0f, 1.0f);
	}
	else {
		colorStrength = 0.0f;
	}
}
