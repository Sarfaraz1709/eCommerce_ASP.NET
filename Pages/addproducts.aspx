<%@ Page Title="" Language="C#" MasterPageFile="~/AdminmasterPage.master" AutoEventWireup="true" CodeBehind="addproducts.aspx.cs" Inherits="Project01.addproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
        <table align="center" cellspacing="1" style="width: 50%; border-collapse: collapse; border:2px solid Transparent ; background-color:rgba(0,0,0,0.6);border-radius:10px">
          
            <tr>
                <td colspan="2" style="height: 25px; color: #FFFFFF"><h2 class="text-center"><strong style="font-weight: bold"><span style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">ADD </span><span style="color: #FF3300; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif">GAMING</span><span style="font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"> PRODUCTS</span></strong></h2></td>
            </tr>
            <tr>
                <td class="text-end" style="width: 223px; height: 61px; color: #FFFFFF; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"><strong>Product Name :</strong></td>
                <td style="height: 61px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="280px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Product Name" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 223px; height: 48px; color: #FFFFFF; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"><strong>Product Price :</strong></td>
                <td style="height: 48px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="211px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Price" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 223px; height: 45px; color: #FFFFFF; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"><strong>Category ID: </strong></td>
                <td style="height: 45px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="79px" style="border:1px solid transparent;border-radius:10px"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="text-end" style="width: 223px; height: 45px; color: #FFFFFF; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif"><strong>Product Image :</strong></td>
                <td style="height: 45px">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="389px" />
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 223px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center" colspan="2"><strong>
                    <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td style="height: 59px;" class="text-center" colspan="2"><strong>
                    <asp:Button ID="Button4" runat="server" style="border:2px solid white;border-radius:10px;background-color:rgb(11, 13, 240, 0.54);font-weight: bold; color: #FFFFFF; height: 29px;" Text="ADD Product" Width="151px" OnClick="Button4_Click" />
                    </strong></td>
            </tr>
            </table>
        <br />
   
</asp:Content>
