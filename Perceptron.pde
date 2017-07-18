public class Perceptron{

	int input_size;
	int hidden_size;
	int output_size;

	float bias = 1;
	Vector inputs;
	Vector hiddens;
	Vector outputs;

	Matrix weights;
	Matrix outWeights;

	public Perceptron(int i, int h, int o){
		this.input_size = i + 1; // added bias input value
		this.hidden_size = h;
		this.output_size = o;

		this.inputs = new Vector(input_size);
		this.hiddens = new Vector(hidden_size);
		this.outputs = new Vector(output_size);

		this.weights = new Matrix(hidden_size, input_size);
		this.outWeights = new Matrix(output_size, hidden_size);
	}

	// add also bias value into the inputs
	public void SetInputs(Vector input) {
		if(input.vector.length != input_size - 1){
			println("input vector lenght should be " + (input_size - 1));
		} else {
			input.vector[0] = bias;
			for (int i = 1; i < input.vector.length; i++) {
				inputs.vector[i] = input.vector[i];
			}	
		}
		
	}
	public void Initialize(){
		this.RandomWeights();
		this.RandomizeInputs();
	}

	public void RandomizeInputs(){
		this.inputs.Randomize();
		this.inputs.vector[0] = bias;
	}
	public void RandomWeights(){
		this.weights.Randomize();
		this.outWeights.Randomize();
	}

	public void ShowNetwork(){
		println("--- INPUTS ---");
		this.inputs.ConsoleLog();
		println("--- WEIGHTS ---");
		this.weights.ConsoleLog();
		println("--- HIDDENS ---");
		this.hiddens.ConsoleLog();
		println("--- OUTWEIGHTS ---");
		this.outWeights.ConsoleLog();
		println("--- OUTPUTS ---");
		this.outputs.ConsoleLog();
	}

	public void FeedForward(){
		hiddens = weights.MultiplyVector(inputs);
		//hiddens = Activation.Step(hiddens);
		outputs = outWeights.MultiplyVector(hiddens);
		//outputs = Activation.Step(outputs);
	}

	public void BackPropagation(){

	}
}