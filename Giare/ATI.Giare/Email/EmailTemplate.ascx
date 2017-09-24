<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailTemplate.ascx.cs"
    Inherits="ATI.Web.Email.EmailTemplate" %>
<table cellspacing="0" cellpadding="0" border="0">
    <tbody>
        <tr style="height: 40px">
            <td style="color: #fff; font-weight: bold; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                vertical-align: middle; padding: 4px 8px;letter-spacing: -0.03em;
                text-align: left; background: none repeat scroll 0 0 #2ecc71">
					<a href="http://www.VietHanEttsc.com" style="color: #fff; text-decoration: none" target="_blank">VietHanEttsc</a> Sáng tạo vì khách hàng
            </td>
        </tr>
        <tr>
            <td valign="top" style="border-right: 1px solid #ccc; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                padding: 5px; border-left: 1px solid #ccc; font-size: 14px" colspan="2">
                <asp:Literal ID="content" runat="server"></asp:Literal>
            </td>
        </tr>
		<tr>
            <td valign="top" style="border-right: 1px solid #ccc; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                padding: 5px; border-left: 1px solid #ccc; font-size: 14px" colspan="2">
                <h3>VietHanEttsc là công ty hàng đầu trong lĩnh vực tư vấn, kiểm định môi trường, thiết kế, tư vấn, thi công các công trình xây dựng dân dụng và công nghiệp:</h3>
				<ol>
					<li>Chúng tôi cung cấp giải pháp tổng thể</li>
					<li>Đem lại lợi ích tối đa cho khách hàng</li>
					<li>Bằng sự khác biệt về công nghệ</li>
					<li>Luôn luôn đúng tiến độ với</li>
					<li>Chất lượng & dịch vụ tốt nhất</li>
                    <li>Với thẩm mỹ cao</li>
                    <li>Chi phí dịch vụ hợp lý</li>
			   </ol>
            </td>
        </tr>
		<%--<tr>
            <td valign="top" style="border-right: 1px solid #ccc; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                padding: 5px; border-left: 1px solid #ccc; font-size: 14px" colspan="2">
               <h3>Tại sao chọn <a href="http://viethanettsc.com">VietHanEttsc</a>?</h3>
            </td>
        </tr>
		<tr>
            <td valign="top" style="border-right: 1px solid #ccc; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                padding: 5px; border-left: 1px solid #ccc; font-size: 14px" colspan="2">
				<p>Chúng tôi phát triển các sản phẩm, dịch vụ hướng đến phục vụ cộng đồng sử dụng Internet trên toàn cầu, các sản phẩm giải pháp phục vụ nhu cầu hiện tại, tương lai ...</p>
			   <ol>
					<li>Chúng tôi cung cấp giải pháp tổng thể</li>
                    <li>Đem lại lợi ích cho khách hàng</li>
                    <li>Bằng sự khác biệt về công nghệ</li>
                    <li>Am hiểu sâu về nghiệp vụ</li>
					<li>Là đối tác của các hãng tư vấn Big four</li>
					<li>Thực hiện những dự án lớn</li>
                    <li>Luôn đặt mục tiêu thỏa mãn nhu cầu khách hàng lên đầu</li>
					<li>Luôn luôn lắng nghe, ghi nhận ý kiến của khách hàng</li>
			   </ol>
            </td>
        </tr>--%>
		<tr style="height: 40px">
            <td style="color: #fff; font-weight: bold; font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
                vertical-align: middle; padding: 4px 8px;letter-spacing: -0.03em;
                text-align: left; background: none repeat scroll 0pt 0pt #2ecc71">
					Liên hệ hotline: 0918.1878.55 -  hoặc đt: 04.8588.8686 | Email: <a target="_blank" href="mailto:info@ATI.vn" style="color:#fff">info@ATI.vn</a>
            </td>
        </tr>		
    </tbody>
</table>
