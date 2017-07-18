public static class Activation{

	public static Vector Step(Vector vector){
		for (int i = 0; i < vector.vector.length; i++) {
			if(vector.vector[i] < -1)
				vector.vector[i] = -1;
			else
				vector.vector[i] = 1;
		}
		return vector;
	}
}