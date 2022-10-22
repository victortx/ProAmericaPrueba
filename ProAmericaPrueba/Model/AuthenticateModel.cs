using System.ComponentModel.DataAnnotations;

namespace ProAmericaPrueba.Model
{
    public class AuthenticateModel
    {
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}