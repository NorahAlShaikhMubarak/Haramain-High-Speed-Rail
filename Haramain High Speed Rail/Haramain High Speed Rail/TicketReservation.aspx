<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketReservation.aspx.cs" Inherits="Haramain_High_Speed_Rail.TicketReservation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css"/>

	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Booking Form HTML Template</title>

	<!-- Google font -->
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'/>

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="cssRes/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    <style>
        #h1{
    background-color: rgba(0, 0, 0, 0.5);
    text-align: center;
    color: white;
    font-size: 40px;
    width: 80%;
    height: 140px;
    margin-left: 10%;
    margin-right: 10%;
}
    </style>

</head>
<body>
	<form id="form1" runat="server">
	<div id="booking" class="section">
        <br />
        <h1 id="h1"><br />Tickets Reservation</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TicketNumber,TableId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." HeaderStyle-BackColor="#0033CC" Font-Bold="True" Font-Size="Large" ForeColor="White" HorizontalAlign="Center">
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
        <asp:Label ID="Label1" runat="server" Text="Please select a TicketId" ForeColor="White" Font-Size="30px" Font-Bold="True" style="margin-left: 40%;"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" BackColor="#000066" ForeColor="White" Height="30px" Width="281px" style="margin-left: 42%;">
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

	</div>

    <script  src="js/scriptRes.js"></script>

    </form>
</body>
</html>











<%--<div class="section-center">
			<div class="container" style="width:80%;">
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br /><br />
                <div class="row no-margin">
                    <div class="col-md-12">
                        <h1 style="font-size: 60px; text-align: center; color: white; font-weight:bold; text-shadow:1px 1px 1px rgba(0, 0, 0, 0.5);">Ticket Reservation</h1>
                    </div>
                </div>
                
				<div class="row">
					<div class="booking-form">                        
							<div class="row no-margin">
                                <div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Source</span>
                                        <select class="form-control">
													<option>Makkah</option>
													<option>Madina</option>				
										</select>	
                                        <span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Destination</span>
										<select class="form-control">
													<option>Makkah</option>
													<option>Madina</option>				
										</select>
                                        <span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row no-margin">
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Departing</span>
												<input class="form-control" type="date" required/>
											</div>
										</div>
										<div class="col-md-5">
											<div class="form-group">
												<span class="form-label">Returning</span>
												<input class="form-control" type="date" required/>
											</div>
										</div>
										<div class="col-md-2">
											<div class="form-group">
												<span class="form-label">Class</span>
												<select class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
												</select>
												<span class="select-arrow"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-btn">
										<button class="submit-btn" onclick="showAvailableTickets()">Check availability</button>
									</div>
								</div>
							</div>
					</div>
				</div>

                <div class="row no-margin" id="AvailableTickets" style="display:none;">
                    <div class="col-md-12">
                        <div class="l-layout">
                            <div class="c-card" id="selectFlights">
                                
                                <div class="c-card__body u-padding-b--xs">
                                    <div class="c-schedule">
                                        <div class="c-schedule__item"><small class="u-text--b-default">From</small><strong class="u-text--info">Makkah</strong></div>
                                        <div class="c-schedule__item c-plane">
                                            <svg class="c-plane__icon" xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24" fill="currentColor">
                                                <path d="M10.18 9"></path>
                                                <path d="M21 16v-2l-8-5V3.5c0-.83-.67-1.5-1.5-1.5S10 2.67 10 3.5V9l-8 5v2l8-2.5V19l-2 1.5V22l3.5-1 3.5 1v-1.5L13 19v-5.5l8 2.5z"></path>
                                            </svg>
                                        </div>
                                        <div class="c-schedule__item"><small class="u-text--b-default">To</small><strong class="u-text--info">Madina</strong></div>
                                        <div class="c-schedule__item">
                                            <div class="c-toggle">
                                                <button class="c-toggle__btn c-toggle__btn--active" data-payment="dollars">$</button>
                                                <button class="c-toggle__btn" data-payment="points">SAR</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="c-divider u-margin-b--xs"></div>
                                <div class="c-card__body u-text--center u-padding-t--xs u-padding-b--sm"><small><span>June 1, 2019 </span><span class="u-text--b-default">to </span><span>Jun 5, 2019</span></small></div>
                                <ul class="c-list" id="flightList"></ul>
                                <div class="c-card__body" id="flightActions" style="display: none;">
                                    <button class="c-button c-button--success c-button--full c-button--lg" id="confirm">Confirm Flight &rarr;</button>
                                </div>
                            </div>
                            <div class="c-card" id="reviewFlights" style="display: none;">
                                <div class="c-card__body">
                                    <button class="c-button c-button--secondary c-theme">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewbox="0 0 32 32" fill="currentColor">
                                            <path d="M 15 3 L 15 8 L 17 8 L 17 3 L 15 3 z M 7.5 6.09375 L 6.09375 7.5 L 9.625 11.0625 L 11.0625 9.625 L 7.5 6.09375 z M 24.5 6.09375 L 20.9375 9.625 L 22.375 11.0625 L 25.90625 7.5 L 24.5 6.09375 z M 16 9 C 12.145852 9 9 12.145852 9 16 C 9 19.854148 12.145852 23 16 23 C 19.854148 23 23 19.854148 23 16 C 23 12.145852 19.854148 9 16 9 z M 16 11 C 18.773268 11 21 13.226732 21 16 C 21 18.773268 18.773268 21 16 21 C 13.226732 21 11 18.773268 11 16 C 11 13.226732 13.226732 11 16 11 z M 3 15 L 3 17 L 8 17 L 8 15 L 3 15 z M 24 15 L 24 17 L 29 17 L 29 15 L 24 15 z M 9.625 20.9375 L 6.09375 24.5 L 7.5 25.90625 L 11.0625 22.375 L 9.625 20.9375 z M 22.375 20.9375 L 20.9375 22.375 L 24.5 25.90625 L 25.90625 24.5 L 22.375 20.9375 z M 15 24 L 15 29 L 17 29 L 17 24 L 15 24 z"></path>
                                        </svg>
                                    </button>
                                    <button class="c-button c-button--secondary c-button--sm" id="back">&larr; Select Flight</button>
                                    <h3 class="u-margin-b--xs u-margin-t--md">TPA to SFO</h3>
                                    <small class="u-text--b-default">June 1 to June 5</small>
                                    <div class="c-divider"></div>
                                    <div class="u-text--b-default u-margin-b--sm"><small>Flight Summary</small></div>
                                    <div class="u-border u-border u-border--info u-padding--md u-rounded--lg u-margin-b--md">
                                        <div class="u-margin-b--xs u-text--info"><small>Departs</small></div>
                                        <table class="c-table">
                                            <tbody>
                                                <tr>
                                                    <td>Tampa International Airport</td>
                                                    <th class="u-text--right" id="departureTime">11:45 AM</th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="u-border u-border u-border--success u-padding--md u-rounded--lg u-margin-b--md">
                                        <div class="u-margin-b--xs u-text--success"><small>Arrives</small></div>
                                        <table class="c-table">
                                            <tbody>
                                                <tr>
                                                    <td>San Francisco International Airport</td>
                                                    <th class="u-text--right" id="arrivalTime">4:50 PM</th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="c-divider"></div>
                                    <table class="c-table">
                                        <thead>
                                            <tr>
                                                <td class="u-padding-b--sm"><small class="u-text--b-default">Checkout</small></td>
                                                <td class="u-text--right u-padding-b--sm"><small class="u-text--success u-margin-r--xs">(points available) 27,000</small></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="u-padding-b--sm">Cost</td>
                                                <td class="u-text--right u-padding-b--sm"><span id="activeCost">-20,000</span></td>
                                            </tr>
                                            <tr>
                                                <td class="u-padding-b--sm">Tax</td>
                                                <td class="u-text--right u-padding-b--sm">-$0.00</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="c-divider"></div>
                                    <div class="u-text--right">
                                        <h2 class="u-margin-b--md" id="total">$350.00</h2>
                                    </div>
                                    <button class="c-button c-button--lg c-button--full c-button--success">Purchase Flight</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</div>--%>
<%-- <script>
        function showAvailableTickets() {
          
                document.getElementById('AvailableTickets').style.display = 'block';
            
        }
    </script>--%>