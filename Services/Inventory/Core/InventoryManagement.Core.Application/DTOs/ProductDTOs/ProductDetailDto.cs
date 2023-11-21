using InventoryManagement.Core.Domain.ProductAggregate.Entities.Enums;

namespace InventoryManagement.Core.Application.DTOs.ProductDTOs;

public class ProductDetailDto
{
    public Guid Id { get; set; }

    public Guid UserId { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public Guid CategoryId { get; set; }

    public int Sold { get; set; }

    public double Rating { get; set; }

    public int TotalReviews { get; set; }

    public ProductCondition Condition { get; set; }
    
    public double MinPrice { get; set; }
    
    public double MaxPrice { get; set; }

    public IEnumerable<ProductTypeDto> Types { get; set; } = null!;
}