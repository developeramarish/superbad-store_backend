using BuildingBlock.Core.Application.CQRS;
using BuildingBlock.Core.Application.DTOs;
using InventoryManagement.Core.Application.DTOs.ProductDTOs;

namespace InventoryManagement.Core.Application.CQRS.Queries.ProductQueries.Requests;

public record FilterAndPagingCurrentUserProductsQuery
    (FilterAndPagingCurrentUserProductsDto Dto) : IQuery<FilterAndPagingResultDto<ProductSummaryDto>>;