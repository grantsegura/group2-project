namespace MuscleWebApi.Models;

public class MuscleSubcategory
{
    public int Id { get; set; }
    public int MuscleGroupId { get; set; }
    public string Name { get; set; } = string.Empty;
    public List<Exercise> Exercises { get; set; } = new List<Exercise>();
}

