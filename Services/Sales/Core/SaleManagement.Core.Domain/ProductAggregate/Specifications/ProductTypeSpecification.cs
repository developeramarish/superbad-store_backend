using System.Linq.Expressions;
using BuildingBlock.Core.Domain.Specifications.Abstractions;
using SaleManagement.Core.Domain.ProductAggregate.Entities;
using SaleManagement.Core.Domain.ProductAggregate.Entities.Enums;

namespace SaleManagement.Core.Domain.ProductAggregate.Specifications;

public class ProductTypeSpecification : Specification<Product>
{
    private readonly ProductCondition? _type;

    public ProductTypeSpecification(ProductCondition? type)
    {
        _type = type;
    }

    public override Expression<Func<Product, bool>> ToExpression()
    {
        // if (_type == null) return product => true;
        //
        // return product => product.Type == _type;

        throw new NotImplementedException();
    }
}