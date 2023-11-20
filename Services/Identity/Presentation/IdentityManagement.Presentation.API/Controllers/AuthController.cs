using IdentityManagement.Core.Application.CQRS.Commands.UserCommands.Requests;
using IdentityManagement.Core.Application.DTOs.UserDTOs;
using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace IdentityManagement.Presentation.API.Controllers;

[ApiController]
[Route("api/auth")]
public class AuthController : ControllerBase
{
    private readonly IMediator _mediator;

    public AuthController(IMediator mediator)
    {
        _mediator = mediator;
    }

    [HttpPost("login")]
    public async Task<ActionResult<LoginResponseDto>> LoginAsync(LoginRequestDto dto)
    {
        var response = await _mediator.Send(new LoginCommand(dto));

        return Ok(response);
    }

    [HttpPost("register")]
    public async Task<ActionResult<UserDto>> RegisterAsync(CreateUserDto dto)
    {
        var user = await _mediator.Send(new CreateUserCommand(dto));

        return Ok(user);
    }

    [HttpPost("refresh-token")]
    public async Task<ActionResult<TokenResponseDto>> GenerateRefreshTokenAsync(GenerateRefreshTokenRequestDto dto)
    {
        var response = await _mediator.Send(new GenerateRefreshTokenCommand(dto));

        return Ok(response);
    }
}