<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reserved.aspx.cs" Inherits="Haramain_High_Speed_Rail.reserved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        function printpage() {

            var getpanel = document.getElementById("<%= Panel1.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write('<html><head><title>Print Page</title>');
            MainWindow.document.write('</head><body>');
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.write('</body></html>');
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;

}
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 310px; margin-left:50%;" >
      
        &nbsp;&nbsp;&nbsp;
      
        &nbsp;<br />
      
        &nbsp;<asp:Label ID="Label3" runat="server" Text="Reserved tickets:" ForeColor="White" Font-Bold="True" Font-Size="30px"></asp:Label><br />
      
        &nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Height="121px" Width="462px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#000066" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
          </asp:Panel>
        <asp:Button ID="Button3" runat="server" OnClientClick="return printpage();" Text="Print Ticket" Width="83px" ForeColor="#000066"/>
    </div>


    <%--Modifying Reservation--%>
    <div style="height: 310px; margin-left:50%;" >
    <%-- Enter the Book Id--%>
    <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Modifying Reservation:" Font-Bold="True" BorderColor="#000066" Font-Size="30px"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter your booking id:" ForeColor="#000066" Font-Size="Large" Font-Bold="True"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Height="29px" Width="300px"></asp:TextBox>
    <br />
    <%--Enter new Ticket Id--%>
    <asp:Label ID="Label4" runat="server" Text="Enter your updated ticket number:" ForeColor="#000066" Font-Size="Large" Font-Bold="True"></asp:Label>
    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="300px"></asp:TextBox>
    <br />
    <br />
        <%--Update button--%>
    <asp:Button ID="Button1" runat="server" BorderColor="#000066" ForeColor="#000066" OnClick="Button1_Click" Text="Update Ticket" Font-Size="Larger" />
    &nbsp;&nbsp;
       <%-- Delete button--%>
    <asp:Button ID="Button2" runat="server" BorderColor="#000066" ForeColor="#000066" Text="Delete Ticket" OnClick="Button2_Click" Font-Size="Larger"/>
    <br />
            </div>
    </asp:Content>
