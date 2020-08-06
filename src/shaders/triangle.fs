#version 330 core
out vec4 FragColor;

/*
    Get out frag coords in screen we're used too, i.e. origin at top left with x increasing to right
    and y increasing down screen.
*/
layout(origin_upper_left) in vec4 gl_FragCoord;

in float colorStrength;

uniform vec2 pulse_location;

void main()
{
    float dist = length(pulse_location - gl_FragCoord.xy);
    float color = dist / 100;
    FragColor = vec4(color);
}
