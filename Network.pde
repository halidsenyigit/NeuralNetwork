// store old network and draw current neural network state into the screen


public class Network{
	int r;

	Neuron[] input_neurons;
	Neuron[] hidden_neurons;
	Neuron[] output_neurons;

	public Network(){

	}

	public void Render(Perceptron p){
		input_neurons = new Neuron[p.input_size];
		r = height / (p.input_size * 6);
		for (int i = 0; i < input_neurons.length; i++) {
			input_neurons[i] = new Neuron(2 * r, 3 * r * ( 2 * i + 1 ), 2 * r, p.inputs.vector[i]);
			input_neurons[i].Render();
		}
		
		hidden_neurons = new Neuron[p.hidden_size];
		r = height / (p.hidden_size * 6);
		for (int i = 0; i < hidden_neurons.length; i++) {
			hidden_neurons[i] = new Neuron(width / 2 - 2 * r, 3 * r * ( 2 * i + 1 ), 2 * r, p.hiddens.vector[i]);
			hidden_neurons[i].Render();
		}

		output_neurons = new Neuron[p.output_size];
		r = height / (p.output_size * 6);
		for (int i = 0; i < output_neurons.length; i++) {
			output_neurons[i] = new Neuron(width - 2 * r, 3 * r * ( 2 * i + 1 ), 2 * r, p.outputs.vector[i]);
			output_neurons[i].Render();
		}


		// render weights
		
	}
}