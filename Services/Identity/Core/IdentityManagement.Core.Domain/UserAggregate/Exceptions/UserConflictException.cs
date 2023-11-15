using BuildingBlock.Core.Domain.Exceptions;
using BuildingBlock.Core.Domain.Shared.Constants.Identity;

namespace IdentityManagement.Core.Domain.UserAggregate.Exceptions;

public class UserConflictException : EntityConflictException
{
    public UserConflictException(string email) : base(nameof(Permissions.User), "email", email)
    {
    }
}