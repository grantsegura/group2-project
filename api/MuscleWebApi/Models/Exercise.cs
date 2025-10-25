namespace MuscleWebApi.Models;

public class Exercise
{
    public int Id { get; set; }
    public int MuscleSubcategoryId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Description { get; set; }
}

