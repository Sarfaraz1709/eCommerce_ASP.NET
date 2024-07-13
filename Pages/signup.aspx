<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Project01.Img.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>

        <table align="center" style="width: 62%; border-radius:25px; border-collapse: collapse; border: 2px solid transparent;background-color:rgba(0,0,0,0.6)">
            <tr>
                <td class="text-center" colspan="2" style="height: 24px; color: #FFFFFF">
                    <h2><span style="color: #FF3300; font-weight: normal"><strong>Sign Up</strong></span><strong> Gamer !!</strong></h2>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 40px;"><strong><span style="color: #FF3300">*</span> User Name : </strong></td>
                <td style="height: 40px; width: 360px;">
                    <asp:TextBox style="border-radius:10px" ID="TextBox1" runat="server" Width="229px"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Insert Username" style="color: #FF3300">User Name</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 42px;"><strong><span style="color: #FF3300">*</span> Create Password : </strong></td>
                <td style="height: 42px; width: 360px;">
                    <asp:TextBox style="border-radius:10px" ID="TextBox2" runat="server" TextMode="Password" Width="228px"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" style="color: #FF3300">Password.</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 40px;"><strong>re-Enter Password :</strong></td>
                <td style="height: 40px; width: 360px;">
                    <asp:TextBox style="border-radius:10px" ID="TextBox4" runat="server" TextMode="Password" Width="228px"></asp:TextBox>
                &nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Password Did Not Matched re Enter Password" style="color: #FF3300">Password Did Not Matched re Enter Password</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 31px;"><strong>Gender : </strong></td>
                <td style="height: 31px; width: 360px;">
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" style="color: #FFFFFF" Text="Male" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" style="color: #FFFFFF" Text="Female" />
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g" style="color: #FFFFFF" Text="Other" />
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 37px;"><strong><span style="color: #FF3300">*</span> Mobile Number : </strong></td>
                <td style="height: 37px; width: 360px;">
                    <asp:TextBox style="border-radius:10px" ID="TextBox3" runat="server" Width="230px" MaxLength="10"></asp:TextBox>
                &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Give You Mobile Number" style="color: #FF3300">Phone number</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 307px; color: #FFFFFF; height: 37px;"><strong><span style="color: #FF3300">*</span> Role :</strong></td>
                <td style="height: 37px; width: 360px;">
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="r" style="color: #FFFFFF" Text="admin" />
&nbsp;
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="r" style="color: #FFFFFF" Text="User" />
                &nbsp;
                </td>
            </tr>
            <tr>
                <td style="height: 70px;" class="text-center" colspan="2"><strong>
                    &nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" style="font-weight: bold; color: #FFFFFF; background-color: #3366FF;border-radius:10px;" Text="Sign Up" OnClick="Button1_Click" Width="131px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" style="font-weight: bold; color: #FFFFFF; background-color: #FF5050;border-radius:10px;" Text="Clear" OnClick="Button2_Click" Width="88px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>

    </div>
    <br /><br />
    <div class="text-center" style="background-color:rgba(0,0,0,0.8);border-radius:50px ">
        <br />
        <br />
        <img alt="gif" src="Img/hor.gif" style="width: 347px; height: 164px; border-radius:15px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="god" src="Img/kratos-vs-thor-thor.gif" style="width: 338px; height: 165px; border-radius:15px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="god" src="Img/jj.gif" style="width: 334px; height: 164px; border-radius:15px" /><br />
        <br />
        <br />
        
    </div>
</asp:Content>
