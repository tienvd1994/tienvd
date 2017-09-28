using System.ComponentModel.DataAnnotations;

namespace ATI.Web.Models
{
    public class ContactViewModel
    {
        public int Id { get; set; }

        [Display(Name = "Họ và tên")]
        [Required(ErrorMessage = "Họ và tên không được để trống")]
        public string Name { get; set; }

        [Display(Name = "Tên công ty")]
        //[Required(ErrorMessage = "Tên công ty không được để trống")]
        public string CompanyName { get; set; }

        [Display(Name = "Số điện thoại")]
        [Required(ErrorMessage = "Số điện thoại không được để trống")]
        public string Phone { get; set; }

        [Display(Name = "Email")]
        [Required(ErrorMessage = "Email không được để trống")]
        [EmailAddress(ErrorMessage = "Email không phải là địa chỉ e-mail hợp lệ.")]
        public string Email { get; set; }

        [Display(Name = @"Nội dung")]
        [Required(ErrorMessage = "Nội dung không được để trống")]
        [StringLength(400, ErrorMessage = "Mật khẩu phải lớn hơn 6 ký tự và nhỏ hơn 50 ký tự.")]
        public string Message { get; set; }
    }
}