public class Vector{
	int n;
	float[] vector;

	public Vector(int n){
		this.n = n;
		vector = new float[n];
	}

	public void Randomize(){
		for (int i = 0; i < n; i++) {
			vector[i] = random(-10, 10);
		}
	}

	public void MultiplyNumber(float n){
		for (int i = 0; i < this.n; i++) {
			vector[i] *= n;
		}
	}

	public void Zero(){
		for (int i = 0; i < n; i++) {
			this.vector[i] = 0;
		}
	}

	public void ConsoleLog(){
		println("-----------------------------");
		for (int i = 0; i < this.n; i++) {
			println(vector[i] + " ");
		}
		println("-----------------------------");
	}
}