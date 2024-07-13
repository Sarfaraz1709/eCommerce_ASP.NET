<%@ Page Title="" Language="C#" MasterPageFile="~/usermasterpage.master" AutoEventWireup="true" CodeBehind="PrintReciept.aspx.cs" Inherits="Project01.PrintReciept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div>
    <h2 style="text-align:center; color: #FFFFFF;"><strong>Order Reciept</strong></h2>
    <div>

        <table align="center" style="width:50%; border:2px solid Transparent;border-radius:5px;background-color:white">
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 56px;">
                    <h4>Name of User :&nbsp; </h4>
                </td>
                <td style="height: 56px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label2" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 47px;">
                    <h4>Mobile Number :+91 -</h4>
                </td>
                <td style="height: 47px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong>&nbsp;<asp:Label ID="Label3" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 90px;">
                    <h4>Address : </h4>
                </td>
                <td style="height: 90px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label4" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 49px;">
                    <h4>Pincode : </h4>
                </td>
                <td style="height: 49px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label5" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 54px;">
                    <h4>City : </h4>
                </td>
                <td style="height: 54px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label6" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 50px;">
                    <h4>State : </h4>
                </td>
                <td style="height: 50px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label7" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 47px;">
                    <h4>Products :</h4>
                </td>
                <td style="height: 47px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label8" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 40px;">
                    <h4>Total Amount :</h4>
                </td>
                <td style="height: 40px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label9" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 48px;">
                    <h4>Date of Buying :</h4>
                </td>
                <td style="height: 48px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label10" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-end" style="width: 431px; font-weight: bold; height: 61px;">
                    <h4>Mode of Payment :</h4>
                </td>
                <td style="height: 61px; width: 612px; font-family: Arial, Helvetica, sans-serif;">
                    <strong><span style="font-family: Arial, Helvetica, sans-serif">&nbsp;&nbsp;
                    </span>
                    <asp:Label ID="Label11" runat="server" style="font-family: Arial, Helvetica, sans-serif"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="text-center" style="font-weight: bold; height: 91px;" colspan="2">
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Print" style="font-weight: bold; color: #FFFFFF; background-color: #3366FF;border-radius:10px;" OnClick="Button2_Click" Width="105px"/>
                    <br />
                    <br />
                    <strong>
                    <asp:Label ID="Label12" runat="server" style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #FF0000;"></asp:Label>
                    </strong>
                </td>
            </tr>
        </table>

    </div>
</div>
</asp:Content>
