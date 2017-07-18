public class Matrix {
	int i, j;
	float[][] matrix;
	public Matrix (int i, int j) {
		this.i = i;
		this.j = j;
		matrix = new float[i][j];
	}

	public void Zero(){
		for (int i = 0; i < this.i; i++) {
			for (int j = 0; j < this.j; j++) {
				this.matrix[i][j] = 0;
			}
		}
	}

	public void Randomize(){
		for (int i = 0; i < this.i; i++) {
			for (int j = 0; j < this.j; j++) {
				this.matrix[i][j] = random(-1, 1);
			}
		}
	}

	public void MultiplyNumber(float n){
		for (int i = 0; i < this.i; i++) {
			for (int j = 0; j < this.j; j++) {
				this.matrix[i][j] *= n;
			}
		}
	}

	public Vector MultiplyVector(Vector v){	
		// this.matrix * v.vector
		Vector newVector = new Vector(this.i);
		newVector.Zero();
		if(v.n != this.j){
			println("Defination error");
			return v;
		}else {
			for (int i = 0; i < this.i; i++) {
				for (int j = 0; j < this.j; j++) {
					newVector.vector[i] += this.matrix[i][j] * v.vector[j];
				}
			}
		return newVector;
		}
	}

	public void ConsoleLog(){
		println("-----------------------------");
		for (int i = 0; i < this.i; ++i) {
			for (int j = 0; j < this.j; ++j) {
				print(this.matrix[i][j] + " ");
			}
			println("");
		}
		println("-----------------------------");
	}
}