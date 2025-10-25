// Global state
let muscleGroups = [];
let currentView = 'front';

// Initialize the app when DOM is loaded
document.addEventListener('DOMContentLoaded', async () => {
  await loadMuscleGroups();
  setupEventListeners();
  loadBodyDiagram('front');
});

// Load muscle groups from API
async function loadMuscleGroups() {
  try {
    muscleGroups = await apiService.getMuscleGroups();
    console.log('Muscle groups loaded:', muscleGroups);
  } catch (error) {
    console.error('Failed to load muscle groups:', error);
    showError('Failed to load muscle groups. Please check if the API is running.');
  }
}

// Setup event listeners
function setupEventListeners() {
  // View toggle buttons
  document.getElementById('frontViewBtn').addEventListener('click', () => {
    switchView('front');
  });

  document.getElementById('backViewBtn').addEventListener('click', () => {
    switchView('back');
  });
}

// Switch between front and back views
function switchView(view) {
  currentView = view;
  
  // Update button states
  const frontBtn = document.getElementById('frontViewBtn');
  const backBtn = document.getElementById('backViewBtn');
  
  if (view === 'front') {
    frontBtn.classList.add('active');
    frontBtn.classList.remove('btn-outline-primary');
    frontBtn.classList.add('btn-primary');
    backBtn.classList.remove('active');
    backBtn.classList.remove('btn-primary');
    backBtn.classList.add('btn-outline-primary');
  } else {
    backBtn.classList.add('active');
    backBtn.classList.remove('btn-outline-primary');
    backBtn.classList.add('btn-primary');
    frontBtn.classList.remove('active');
    frontBtn.classList.remove('btn-primary');
    frontBtn.classList.add('btn-outline-primary');
  }
  
  // Load the appropriate diagram
  loadBodyDiagram(view);
  
  // Hide exercise display when switching views
  document.getElementById('exerciseDisplay').classList.add('d-none');
}

// Load body diagram (SVG)
function loadBodyDiagram(view) {
  const container = document.getElementById('diagramContainer');
  const svgFile = view === 'front' ? 'svg/body-front.svg' : 'svg/body-back.svg';
  
  fetch(svgFile)
    .then(response => response.text())
    .then(svg => {
      container.innerHTML = svg;
      attachMuscleClickHandlers();
    })
    .catch(error => {
      console.error('Error loading SVG:', error);
      container.innerHTML = '<p class="text-danger">Error loading body diagram</p>';
    });
}

// Attach click handlers to muscle groups in SVG
function attachMuscleClickHandlers() {
  const muscleElements = document.querySelectorAll('.muscle-group');
  
  muscleElements.forEach(element => {
    element.style.cursor = 'pointer';
    
    element.addEventListener('click', async (e) => {
      const muscleId = parseInt(e.currentTarget.getAttribute('data-muscle-id'));
      await handleMuscleClick(muscleId);
    });
    
    // Add hover effects
    element.addEventListener('mouseenter', (e) => {
      e.currentTarget.style.opacity = '0.7';
    });
    
    element.addEventListener('mouseleave', (e) => {
      e.currentTarget.style.opacity = '1';
    });
  });
}

// Handle muscle group click
async function handleMuscleClick(muscleId) {
  const muscleGroup = muscleGroups.find(mg => mg.id === muscleId);
  
  if (!muscleGroup) {
    showError('Muscle group not found');
    return;
  }
  
  // Show loading state
  const exerciseDisplay = document.getElementById('exerciseDisplay');
  const exerciseContent = document.getElementById('exerciseContent');
  const muscleGroupTitle = document.getElementById('muscleGroupTitle');
  
  exerciseDisplay.classList.remove('d-none');
  muscleGroupTitle.textContent = muscleGroup.name;
  exerciseContent.innerHTML = '<div class="text-center"><div class="spinner-border" role="status"><span class="visually-hidden">Loading...</span></div></div>';
  
  // Scroll to exercise section
  exerciseDisplay.scrollIntoView({ behavior: 'smooth', block: 'start' });
  
  try {
    // Fetch exercises for this muscle group
    const subcategories = await apiService.getExercisesByMuscleGroup(muscleId);
    displayExercises(muscleGroup.name, subcategories);
  } catch (error) {
    console.error('Error loading exercises:', error);
    exerciseContent.innerHTML = '<div class="alert alert-danger">Failed to load exercises</div>';
  }
}

// Display exercises organized by subcategory
function displayExercises(muscleName, subcategories) {
  const exerciseContent = document.getElementById('exerciseContent');
  
  if (subcategories.length === 0) {
    exerciseContent.innerHTML = '<div class="alert alert-info">No exercises found for this muscle group.</div>';
    return;
  }
  
  let html = '<div class="row">';
  
  subcategories.forEach(subcategory => {
    html += `
      <div class="col-12 col-md-6 col-lg-4 mb-4">
        <div class="card h-100">
          <div class="card-header bg-primary text-white">
            <h5 class="mb-0">${subcategory.name}</h5>
          </div>
          <div class="card-body">
            <ul class="list-group list-group-flush">
    `;
    
    if (subcategory.exercises && subcategory.exercises.length > 0) {
      subcategory.exercises.forEach(exercise => {
        html += `
          <li class="list-group-item">
            <strong>${exercise.name}</strong>
            ${exercise.description ? `<br><small class="text-muted">${exercise.description}</small>` : ''}
          </li>
        `;
      });
    } else {
      html += '<li class="list-group-item text-muted">No exercises available</li>';
    }
    
    html += `
            </ul>
          </div>
        </div>
      </div>
    `;
  });
  
  html += '</div>';
  exerciseContent.innerHTML = html;
}

// Show error message
function showError(message) {
  const exerciseDisplay = document.getElementById('exerciseDisplay');
  const exerciseContent = document.getElementById('exerciseContent');
  
  exerciseDisplay.classList.remove('d-none');
  exerciseContent.innerHTML = `<div class="alert alert-danger">${message}</div>`;
}

