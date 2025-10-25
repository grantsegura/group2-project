// API configuration
const API_BASE_URL = 'http://localhost:5108/api'; // Using HTTP since HTTPS cert may not be configured

// API service object
const apiService = {
  // Get all muscle groups
  async getMuscleGroups() {
    try {
      const response = await fetch(`${API_BASE_URL}/exercises/musclegroups`);
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      return await response.json();
    } catch (error) {
      console.error('Error fetching muscle groups:', error);
      throw error;
    }
  },

  // Get exercises for a specific muscle group
  async getExercisesByMuscleGroup(muscleGroupId) {
    try {
      const response = await fetch(`${API_BASE_URL}/exercises/${muscleGroupId}`);
      if (!response.ok) {
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      return await response.json();
    } catch (error) {
      console.error('Error fetching exercises:', error);
      throw error;
    }
  }
};

