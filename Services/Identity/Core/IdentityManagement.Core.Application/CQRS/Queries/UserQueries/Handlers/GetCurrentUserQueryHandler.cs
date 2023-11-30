using BuildingBlock.Core.Application;
using BuildingBlock.Core.Application.CQRS;
using BuildingBlock.Core.Domain.Shared.Utils;
using IdentityManagement.Core.Application.CQRS.Queries.UserQueries.Requests;
using IdentityManagement.Core.Application.DTOs.UserDTOs;
using IdentityManagement.Core.Domain.UserAggregate.Exceptions;
using IdentityManagement.Core.Domain.UserAggregate.Repositories;

namespace IdentityManagement.Core.Application.CQRS.Queries.UserQueries.Handlers;

public class GetCurrentUserQueryHandler : IQueryHandler<GetCurrentUserQuery, UserSummaryDto>
{
    private readonly ICurrentUser _currentUser;
    private readonly IUserReadOnlyRepository _userReadOnlyRepository;

    public GetCurrentUserQueryHandler(ICurrentUser currentUser, IUserReadOnlyRepository userReadOnlyRepository)
    {
        _currentUser = currentUser;
        _userReadOnlyRepository = userReadOnlyRepository;
    }

    public async Task<UserSummaryDto> Handle(GetCurrentUserQuery request, CancellationToken cancellationToken)
    {
        return Optional<UserSummaryDto>.Of(await _userReadOnlyRepository.GetByIdAsync<UserSummaryDto>(_currentUser.Id))
            .ThrowIfNotExist(new UserNotFoundException(_currentUser.Id)).Get();
    }
}