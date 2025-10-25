using MySqlConnector;
using MuscleWebApi.Models;

namespace MuscleWebApi.Data;

public class DatabaseHelper
{
    private readonly string _connectionString;

    public DatabaseHelper(string connectionString)
    {
        _connectionString = connectionString;
    }

    public async Task<List<MuscleGroup>> GetAllMuscleGroupsAsync()
    {
        var muscleGroups = new List<MuscleGroup>();

        using var connection = new MySqlConnection(_connectionString);
        await connection.OpenAsync();

        var query = "SELECT Id, Name, View FROM MuscleGroups ORDER BY Id";
        using var command = new MySqlCommand(query, connection);
        using var reader = await command.ExecuteReaderAsync();

        while (await reader.ReadAsync())
        {
            muscleGroups.Add(new MuscleGroup
            {
                Id = reader.GetInt32(0),
                Name = reader.GetString(1),
                View = reader.GetString(2)
            });
        }

        return muscleGroups;
    }

    public async Task<List<MuscleSubcategory>> GetExercisesByMuscleGroupAsync(int muscleGroupId)
    {
        var subcategories = new List<MuscleSubcategory>();

        using var connection = new MySqlConnection(_connectionString);
        await connection.OpenAsync();

        // Get subcategories for the muscle group
        var subcategoryQuery = @"
            SELECT Id, MuscleGroupId, Name 
            FROM MuscleSubcategories 
            WHERE MuscleGroupId = @MuscleGroupId
            ORDER BY Id";

        using var subcategoryCommand = new MySqlCommand(subcategoryQuery, connection);
        subcategoryCommand.Parameters.AddWithValue("@MuscleGroupId", muscleGroupId);

        using var subcategoryReader = await subcategoryCommand.ExecuteReaderAsync();

        while (await subcategoryReader.ReadAsync())
        {
            subcategories.Add(new MuscleSubcategory
            {
                Id = subcategoryReader.GetInt32(0),
                MuscleGroupId = subcategoryReader.GetInt32(1),
                Name = subcategoryReader.GetString(2),
                Exercises = new List<Exercise>()
            });
        }

        await subcategoryReader.CloseAsync();

        // Get exercises for each subcategory
        foreach (var subcategory in subcategories)
        {
            var exerciseQuery = @"
                SELECT Id, MuscleSubcategoryId, Name, Description 
                FROM Exercises 
                WHERE MuscleSubcategoryId = @SubcategoryId
                ORDER BY Name";

            using var exerciseCommand = new MySqlCommand(exerciseQuery, connection);
            exerciseCommand.Parameters.AddWithValue("@SubcategoryId", subcategory.Id);

            using var exerciseReader = await exerciseCommand.ExecuteReaderAsync();

            while (await exerciseReader.ReadAsync())
            {
                subcategory.Exercises.Add(new Exercise
                {
                    Id = exerciseReader.GetInt32(0),
                    MuscleSubcategoryId = exerciseReader.GetInt32(1),
                    Name = exerciseReader.GetString(2),
                    Description = exerciseReader.IsDBNull(3) ? null : exerciseReader.GetString(3)
                });
            }
        }

        return subcategories;
    }
}

