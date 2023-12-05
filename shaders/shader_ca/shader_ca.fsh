//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	

	gl_FragColor = vec4(texture2D(gm_BaseTexture, vec2(v_vTexcoord.x-0.002, v_vTexcoord.y)).r, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).g, texture2D(gm_BaseTexture, vec2(v_vTexcoord.x, v_vTexcoord.y)).b, 1.0);


}
