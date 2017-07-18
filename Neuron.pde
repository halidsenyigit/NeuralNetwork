public class Neuron{
	int x, y, r;
	float value;

	// r = 5r
	// 3r = r
	// 1r = top space
	// 1r = bottom space

	public Neuron(int x, int y, int r, float val){
		this.x = x;
		this.y = y;
		this.r = r;
		this.value = val;
	}

	public void Render(){
		fill(166, 66, 66);
		ellipse(x, y, r, r);
		RenderValue();
	}

	public void RenderWeightPoints(int w_size){

	}

	public void RenderValue(){
		fill(0x33, 0xff, 0x33);
		textSize(28);
		text(this.value, this.x - 2 * r / 3, this.y - 2 * r / 3); 
	}
}