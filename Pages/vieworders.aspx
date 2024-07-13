<%@ Page Title="" Language="C#" MasterPageFile="~/AdminmasterPage.master" AutoEventWireup="true" CodeBehind="vieworders.aspx.cs" Inherits="Project01.vieworders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>

       <h1 class="text-center"><br /> <span style="color: #FF3300"><strong><span style="font-family: 'Times New Roman', Times, serif">TOTAL ORDERS</span> </strong></span></h1>
        <div class="text-center" style=" text-align:center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="orderid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="250px" Width="1343px" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" ReadOnly="True" SortExpression="orderid" />
                    <asp:BoundField DataField="FulName" HeaderText="FulName" SortExpression="FulName" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                    <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                    <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" SortExpression="TotalPrice" />
                    <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" SortExpression="Date_Time" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=KHANSI;Initial Catalog=Games;Integrated Security=True;" ProviderName="<%$ ConnectionStrings:GamesConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Orders] ORDER BY [Date_Time], [orderid]"></asp:SqlDataSource>

    </div>
</asp:Content>
