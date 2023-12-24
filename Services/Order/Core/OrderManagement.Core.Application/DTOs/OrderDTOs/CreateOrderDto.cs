namespace OrderManagement.Core.Application.DTOs.OrderDTOs;

public class CreateOrderDto
{
    public Guid ShippingAddressId { get; set; }

    public IEnumerable<CreateOrderItemDto> OrderItems { get; set; } = null!;
}