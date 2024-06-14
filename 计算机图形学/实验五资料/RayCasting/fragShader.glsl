#version 430

layout (binding=0) uniform sampler2D tex;

in vec2 uv;
in vec4 glfragcolor;

void main()
{
	glfragcolor = vec4( texture2D( tex, uv).rgb, 1.0);
}
