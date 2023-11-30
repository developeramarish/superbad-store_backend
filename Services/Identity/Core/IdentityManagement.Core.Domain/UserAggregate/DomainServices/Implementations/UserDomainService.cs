using BuildingBlock.Core.Domain.Exceptions;
using BuildingBlock.Core.Domain.Shared.Utils;
using IdentityManagement.Core.Domain.UserAggregate.DomainServices.Abstractions;
using IdentityManagement.Core.Domain.UserAggregate.Entities;
using IdentityManagement.Core.Domain.UserAggregate.Exceptions;
using IdentityManagement.Core.Domain.UserAggregate.Repositories;

namespace IdentityManagement.Core.Domain.UserAggregate.DomainServices.Implementations;

public class UserDomainService : IUserDomainService
{
    private readonly IUserReadOnlyRepository _userReadOnlyRepository;

    public UserDomainService(IUserReadOnlyRepository userReadOnlyRepository)
    {
        _userReadOnlyRepository = userReadOnlyRepository;
    }

    public void AddRefreshToken(User user, string refreshToken)
    {
        user.RefreshTokens.Add(new RefreshToken(refreshToken));
    }

    public async Task<User> CreateAsync(string email, string name, string password,
        string confirmPassword)
    {
        await CheckValidOnCreate(email, password, confirmPassword);

        var user = new User(email, name);

        return user;
    }

    public async Task<string> ResetPasswordAsync(User user, string password, string confirmPassword)
    {
        Optional<string>.Of(password).ThrowIfNotEqual(confirmPassword,
            new ValidationException("Password and confirm password don't match"));

        return await _userReadOnlyRepository.GetPasswordResetToken(user);
    }

    private async Task CheckValidOnCreate(string email, string password, string confirmPassword)
    {
        ThrowIfPasswordIsNotMatch(password, confirmPassword);

        // await ThrowIfPhoneNumberIsExistAsync(phoneNumber);

        await ThrowIfEmailIsExistAsync(email);
    }

    private async Task ThrowIfPhoneNumberIsExistAsync(string phoneNumber)
    {
        Optional<bool>.Of(await _userReadOnlyRepository.CheckIfPhoneNumberIsExistAsync(phoneNumber))
            .ThrowIfExist(new UserConflictException("phone number", phoneNumber));
    }

    private async Task ThrowIfEmailIsExistAsync(string email)
    {
        Optional<bool>.Of(await _userReadOnlyRepository.CheckIfEmailIsExistAsync(email))
            .ThrowIfExist(new UserConflictException("email", email));
    }

    private static void ThrowIfPasswordIsNotMatch(string password, string confirmPassword)
    {
        Optional<string>.Of(password).ThrowIfNotEqual(confirmPassword,
            new ValidationException("Password and confirm password don't match"));
    }
}