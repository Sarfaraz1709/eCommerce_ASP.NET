<%@ Page Title="" Language="C#" MasterPageFile="~/usermasterpage.master" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="Project01.viewcart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center"><span style="font-family: 'Microsoft New Tai Lue'; color: #FFFFFF; font-weight: normal"><strong>My Cart</strong></span><strong>
        <img alt="mycart" src="Img/icons8-cart-64.png" style="width: 64px; height: 64px" /><br style="font-family: 'times New Roman', Times, serif; color: #FFFFFF" />
        </strong></h1>
    <div>
        <strong>
        <asp:Button ID="Button2" runat="server" Text="Add Items" Width="109px" 
            style="font-weight: bold; color: #FF3300; background-color: #FFFFFF;border:1px solid transparent;border-radius:10px" OnClick="Button2_Click" />
        </strong>
        <br />
    </div><br />
             <table style="border:1px solid transparent;background-color:rgba(0,0,0,0.6);border-radius:5px;" width="100%">
                    <tr>
                        <th width="10%"><span style="color: #FFFFFF">&nbsp<b>Productid</b></span></th>
                        <th width="10%" style="color: #FFFFFF"><b>Product Name</b></th>
                        <th width="10%" style="color: #FFFFFF"><b>Product Price</b></th>
                        <th width="10%"><span style="color: #FFFFFF">&nbsp&nbsp&nbsp<b>Product Image</b></span></th>
                        <th width="10%"></th>
                        <th width="10%" style="color: #FFFFFF" class="text-start"><b>Quantity</b></th>
                        <th width="10%"></th>
                        <th class="text-start" style="width: 10%"><span style="color: #FFFFFF"><b>Total amount</b> </span> </th>
                        <th width="10%" style="color: #FFFFFF"><b>Update</b></th>
                        <th width="10%" style="color: #FF3300"><b>Delete</b></th>

                    </tr>
           </table>
    <div>

        <asp:DataList ID="DataList1" runat="server" Width="100%" OnItemCommand="DataList1_ItemCommand" style="color: #FFFFFF">
             <ItemTemplate>
  <HeaderTemplate>
    <table style="border:1px solid transparent;background-color:rgba(0,0,0,0.6);border-radius:10px;" width="100%">
        <tr>
            <th width="10%">&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="pid" runat="server" Text='<%#Eval("pid") %>'/> </th>
            <th width="10%">&nbsp&nbsp&nbsp<asp:Label ID="pn" runat="server" Text='<%#Eval("pname") %>'/></th>
            <th width="10%">&nbsp&nbsp<asp:Label ID="pp" runat="server" Text='<%#Eval("pprice") %>'/>/-</th>
            <th width="10%">&nbsp &nbsp<asp:Image ID="img" runat="server" Imageurl='<%#Eval("imgname","{0}") %>' Width="100px" Height="120px"/></th>
            <%-- Cerated A Textbox for Quantity so that user can change Quantity in Viewdetails  --%>
            
            <th width="10%">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Button width="30px" CommandName="minus" ID="minus" runat="server" Text="-" style="background-color:rgb(255, 21, 21, 0.56);color:white"/></th> 
            <th width="10%"><asp:TextBox width="30px" ID="qty" runat="server" Text='<%#Eval("quantity") %>'/></th> 
            <th width="10%"><asp:Button width="30px" CommandName="plus" ID="plus" runat="server" Text="+" style="background-color:rgb(3, 46, 243, 0.62);color:white"/></th>
           
            <th width="10%"><asp:Label ID="Total" runat="server" Text='<%#Eval("totalamount") %>'/> Rs.</th>
             <%-- Created a button in  Datalist   --%>
            <th width="10%"><asp:Button CommandName="update" ID="updbtn" runat="server" Text="Update" style="border:1px solid transparent;border-radius:5px" /></th>
            <th width="10%"><asp:Button CommandName="delete" ID="delbtn" runat="server" Text="Delete" style="border:1px solid transparent;border-radius:5px"  /></th>
        </tr>
    </table>
</HeaderTemplate>       

 </ItemTemplate>
        </asp:DataList>
        <div class="text-center">
            <strong>
            <asp:Label ID="Label1" runat="server" Text="" style="color: #FFFFFF"></asp:Label>
            </strong>
        <table style="border:1px solid transparent" width="100%">
         <tr>
             <th style="color: #FFFFFF; height: 29px;"><b> <span style="color: #FF3300">Number Of Products :</span><span style="color: #FFFFFF"> </span> </b><asp:Label ID="TotalProducts" runat="server" Text="result" style="color: #FFFFFF" /></th>                          
             <%-- Add a Label for All the TotalAmount of product --%>
             <th style="color: #FFFFFF; height: 29px;" class="text-end"><b> <span style="color: #FF3300">Total Price To Pay : </span> </b> <asp:Label ID="grandtotal" runat="server" Text="result" style="color: #FFFFFF" /> <span style="color: #FFFFFF">Rs.</span></th>   
         </tr>
       </table>      
       </div>
<div class="text-center">

    <strong>
    <asp:Button ID="Button3" runat="server" style="font-weight: bold; color: #FFFFFF; background-color:rgb(20 60 241 / 0.63);border:1px solid white;border-radius:5px" 
        Text="Procede To BUY" Width="341px" OnClick="Button3_Click" />
    </strong>

</div>
    </div>
</asp:Content>
