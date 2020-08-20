<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="Haramain_High_Speed_Rail.ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--All available tickets from the database--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketNumber,TableId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HeaderStyle-BackColor="#0033CC" Font-Bold="True" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="TicketNumber" HeaderText="TicketNumber" ReadOnly="True" SortExpression="TicketNumber" InsertVisible="False" />
                <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="DepatureTime" HeaderText="DepatureTime" SortExpression="DepatureTime" />
                <asp:BoundField DataField="ArrivalTime" HeaderText="ArrivalTime" SortExpression="ArrivalTime" />
                <asp:BoundField DataField="TrainName" HeaderText="TrainName" SortExpression="TrainName" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="SeatNumber" HeaderText="SeatNumber" SortExpression="SeatNumber" />       
                <asp:BoundField DataField="TicketPrice" HeaderText="TicketPrice" SortExpression="TicketPrice" />               
                <asp:BoundField DataField="FirstStation" HeaderText="FirstStation" SortExpression="FirstStation" />
                <asp:BoundField DataField="SecondStation" HeaderText="SecondStation" SortExpression="SecondStation" />  
                <asp:BoundField DataField="ThirdStation" HeaderText="ThirdStation" SortExpression="ThirdStation" />            
            </Columns>
            <HeaderStyle BackColor="#000066" />
            <RowStyle BackColor="White" ForeColor="#000066" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaramainRailwayConnectionString1 %>" DeleteCommand="DELETE FROM [Tickets] WHERE [TicketNumber] = @TicketNumber" InsertCommand="INSERT INTO [Tickets] ([Date], [DepatureTime], [ArrivalTime], [SeatNumber], [TicketPrice], [TrainNumber]) VALUES (@Date, @DepatureTime, @ArrivalTime, @SeatNumber, @TicketPrice, @TrainNumber)" ProviderName="<%$ ConnectionStrings:HaramainRailwayConnectionString1.ProviderName %>" SelectCommand="SELECT Tickets.TicketNumber, Tickets.Date, Tickets.DepatureTime, Tickets.ArrivalTime, Tickets.SeatNumber, Tickets.TicketPrice, Tickets.TrainNumber, Train.TrainName, Train.Class, Train.Source, Train.Destination, Train.FirstStation, Train.ThirdStation, Train.SecondStation, Train.TableId FROM Tickets INNER JOIN Train ON Tickets.TrainNumber = Train.TableId" UpdateCommand="UPDATE [Tickets] SET [Date] = @Date, [DepatureTime] = @DepatureTime, [ArrivalTime] = @ArrivalTime, [SeatNumber] = @SeatNumber, [TicketPrice] = @TicketPrice, [TrainNumber] = @TrainNumber WHERE [TicketNumber] = @TicketNumber">
            <DeleteParameters>
                <asp:Parameter Name="TicketNumber" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter DbType="Time" Name="DepatureTime" />
                <asp:Parameter DbType="Time" Name="ArrivalTime" />
                <asp:Parameter Name="SeatNumber" Type="Int32" />
                <asp:Parameter Name="TicketPrice" Type="Double" />
                <asp:Parameter Name="TrainNumber" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter DbType="Time" Name="DepatureTime" />
                <asp:Parameter DbType="Time" Name="ArrivalTime" />
                <asp:Parameter Name="SeatNumber" Type="Int32" />
                <asp:Parameter Name="TicketPrice" Type="Double" />
                <asp:Parameter Name="TrainNumber" Type="Int32" />
                <asp:Parameter Name="TicketNumber" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <br /><br />
    <%--Select the required ticket to be reserved--%>
        <asp:Label ID="Label1" runat="server" Text="Please select a TicketId" ForeColor="White" Font-Size="30px" Font-Bold="True" style="margin-left: 35%;"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#000066" ForeColor="White" Height="30px" Width="281px" style="margin-left: 37%;">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
        </asp:DropDownList>
    <br /><br /><br />
    <%--Done button to reserve the ticket--%>
   <asp:Button ID="Done" runat="server" Text="Done"  Style="margin-left: 525px;  background-color: rgba(0, 0, 0, 0.5);" ForeColor="white" Height="30px" Font-Size="15px" Width="150px" Font-Bold="True" BorderColor="White" BorderStyle="Solid" OnClick="Done_Click"/>
</asp:Content>
