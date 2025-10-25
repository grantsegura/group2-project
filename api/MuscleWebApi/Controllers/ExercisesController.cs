using Microsoft.AspNetCore.Mvc;
using MuscleWebApi.Data;
using MuscleWebApi.Models;

namespace MuscleWebApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ExercisesController : ControllerBase
{
    private readonly DatabaseHelper _databaseHelper;

    public ExercisesController(IConfiguration configuration)
    {
        var connectionString = configuration.GetConnectionString("DefaultConnection") 
            ?? throw new InvalidOperationException("Connection string not found");
        _databaseHelper = new DatabaseHelper(connectionString);
    }

    [HttpGet("musclegroups")]
    public async Task<ActionResult<List<MuscleGroup>>> GetMuscleGroups()
    {
        try
        {
            var muscleGroups = await _databaseHelper.GetAllMuscleGroupsAsync();
            return Ok(muscleGroups);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = "Error retrieving muscle groups", error = ex.Message });
        }
    }

    [HttpGet("{muscleGroupId}")]
    public async Task<ActionResult<List<MuscleSubcategory>>> GetExercisesByMuscleGroup(int muscleGroupId)
    {
        try
        {
            var exercises = await _databaseHelper.GetExercisesByMuscleGroupAsync(muscleGroupId);
            
            if (exercises.Count == 0)
            {
                return NotFound(new { message = $"No exercises found for muscle group {muscleGroupId}" });
            }

            return Ok(exercises);
        }
        catch (Exception ex)
        {
            return StatusCode(500, new { message = "Error retrieving exercises", error = ex.Message });
        }
    }
}

