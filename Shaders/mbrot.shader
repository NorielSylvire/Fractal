shader_type canvas_item;

uniform sampler2D tex;
uniform vec2 center;
uniform float scale;
uniform int iter;

void fragment() {
    vec2 z, c;

    c = vec2(1.66666, 1.0) * (UV - 0.5) * scale - center;

    int i;
    z = c;
    for(i=0; i<iter; i++) {
        float x = (z.x * z.x - z.y * z.y) + c.x;
        float y = (z.y * z.x + z.x * z.y) + c.y;

        if((x * x + y * y) > 4.0) break;
        z = vec2(x, y);
    }

    COLOR = texture(tex, vec2((i == iter ? 0.0 : float(i)) / 100.0, 0.0));
}