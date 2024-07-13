<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="edtprofile.aspx.cs" Inherits="Project01.edtprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h2 class="text-center" style="color: #FFFFFF">
     <strong> <img alt="xox" src="Img/XOsX.gif" style="width: 68px; height: 72px" />Edit Your <span style="color: #FF3300">Gamers</span> Profile </strong> </h2>
  <div class="text-center">
      <%-- Table --%>
      <table align="center" cellspacing="3" style="width: 48%; background-color:rgba(0,0,0,0.7); border-collapse: collapse; border: 2px solid transparent;border-radius:15px">
          <tr>
              <td class="text-end" style="font-family: 'Arial Black'; color: #FFFFFF; height: 62px; width: 258px"><strong><span style="color: #FF3300">User Name :</span> </strong></td>
              <td class="text-start" style="height: 62px">
                  <asp:TextBox style="border-radius:10px" ID="TextBox1" runat="server" Width="351px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="text-end" style="font-family: 'Arial Black'; color: #FFFFFF; height: 44px; width: 258px"><strong>User Password : </strong></td>
              <td class="text-start" style="height: 44px">
                  <asp:TextBox style="border-radius:10px" ID="TextBox2" runat="server" Width="351px"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="text-end" style="font-family: 'Arial Black'; color: #FF3300; height: 48px; width: 258px"><strong>Gender :</strong></td>
              <td class="text-start" style="height: 48px">
                  <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" style="color: #FFFFFF; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" Text="Male" />
&nbsp;
                  <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" style="color: #FFFFFF; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" Text="Female" />
&nbsp;
                  <asp:RadioButton ID="RadioButton3" runat="server" GroupName="g" style="color: #FFFFFF; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" Text="Other" />
              </td>
          </tr>
          <tr>
              <td class="text-end" style="font-family: 'Arial Black'; color: #FFFFFF; height: 49px; width: 258px"><strong>Mobile Number : </strong></td>
              <td class="text-start" style="height: 49px">
                  <asp:TextBox style="border-radius:10px" ID="TextBox3" runat="server" Width="351px" MaxLength="10"></asp:TextBox>
              </td>
          </tr>
          <tr>
              <td class="text-end" style="font-family: 'Arial Black'; color: #FFFFFF; width: 258px"></td>
              <td class="text-start">
              </td>
          </tr>
          <tr>
              <td colspan="2" style="height: 68px"><strong>
                  <asp:Button ID="Button1" runat="server" style="font-weight: bold; color: #FFFFFF; background-color: #3366FF ; border-radius:10px" Text="Update" Height="40px" Width="107px" OnClick="Button1_Click" />
                  </strong>&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="Button2" style="border-radius:10px" runat="server" Text="Clear" Height="38px" Width="73px" OnClick="Button2_Click" />
              &nbsp;&nbsp;
              </td>
          </tr>
          <tr>
              <td colspan="2"><strong>
                  <asp:Label ID="Label1" runat="server" style="color: #FFFFFF" Text=""></asp:Label>
                  </strong></td>
          </tr>
      </table>
      <br />
      <br />
      <br />

  </div>
</asp:Content>
