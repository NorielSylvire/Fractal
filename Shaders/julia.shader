shader_type canvas_item;

uniform sampler2D tex;
uniform vec2 c;
uniform float a;
uniform int iter;
uniform vec2 center;
uniform float xscale;
uniform float yscale;

void fragment() {
	vec2 z;
	z = vec2(1.0 * xscale - center.x, 1.0 * yscale - center.y) * (UV - 0.5);
	
	int i;
	for(i=0; i<iter; i++) {
		float x = (z.x * z.x - z.y * z.y) + c.x;
		float y = (z.y * z.x + z.x * z.y) + c.y;
		
		if((x * x + y * y) > 4.0) break;
		z.x = x;
		z.y = y;
	}

	COLOR = texture(tex, vec2((i == iter ? 0.0 : float(i)) / 100.0, 0.0));
}