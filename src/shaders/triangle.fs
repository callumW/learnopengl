#version 330 core
out vec4 FragColor;

in vec3 ourColor;
in vec2 TexCoord;
in float colorStrength;

uniform sampler2D texture1;
uniform sampler2D texture2;

void main()
{
    FragColor = mix(texture(texture1, TexCoord), texture(texture2, vec2(0 - TexCoord.x, TexCoord.y)), 0.2);
    vec4 bg_color = vec4(0.2f, 0.3f, 0.3f, 1.0f);
    FragColor = mix(bg_color, FragColor, colorStrength);
}
