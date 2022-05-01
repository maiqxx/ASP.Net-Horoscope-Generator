<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Horoscope.aspx.cs" Inherits="Horoscope" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Cavalida - Horoscope Generator</title>

    <style type="text/css">
        /*Body Styling*/
        body{
            background-color:#863b87;
            
        }

        /*Button Styling*/
        .button {
          background-color: plum; 
          border: none;
          color: white;
          padding: 15px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 16px;
          margin: 4px 2px;
          cursor: pointer;
          border-radius: 8px;
        }

        /*extra styling*/
        .align-middle{text-align:center;}
        .medium18{font-size:20px}
    </style>

</head>
<body>

    <form id="form1" runat="server" method="post">
        <div align="center">
            
            <h1 style="color: #FFFFFF; font-family: Arial, Helvetica, sans-serif">Horoscope</h1><br /><br />

               <asp:Panel ID="Panel1" 
                   runat="server"  
                   BorderStyle="Outset" 
                   Direction="LeftToRight" 
                   BackColor="#660066" 
                   Width="600px" 
                   Height="270px" 
                   BorderWidth="5px"
                   style="font-family: Arial, Helvetica, sans-serif" 
                   BorderColor="#FF99FF">
                <br />

                  <table style="width:500px; float:inherit">

                   <tr style="height:50px" >
                           <td style="width:100px">
                               <asp:Label ID="lblName" runat="server" ForeColor="#FFCCFF" style="align-content:space-evenly" Text="Name: "></asp:Label>
                           </td>

                           <td style="width:200px">
                               <asp:TextBox ID="txtName" runat="server" Height="25px" BorderColor="#FF99FF" BackColor="#FFCCFF" BorderStyle="Solid"></asp:TextBox>
                           </td>

                           <td style="text-align: left; color: red">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server"
                                ControlToValidate="txtName" 
                                ErrorMessage="Please input your name."
                                SetFocusOnError="True" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </td>
                       </tr>

                  <tr style="height:40px">
                      
                     <td style="width:10px">
                       <asp:Label ID="lblMonth" runat="server" style="align-content:space-evenly" Text="Month:" ForeColor="#FFCCFF" ></asp:Label>
                     </td>

                     <%--Month Dropdown List--%>
                     <td style="width:70px">
                       <asp:DropDownList ID="dlMonth" 
                           runat="server" 
                           Height="30px" 
                           Selected="True" 
                           ToolTip="Choose your birth month."
                           BackColor="#FFCCFF" Font-Bold="True" Width="170px">
                        <asp:ListItem runat="server" Value="january">January</asp:ListItem>
                        <asp:ListItem runat="server" Value="february">February</asp:ListItem>
                        <asp:ListItem runat="server" Value="march">March</asp:ListItem>
                        <asp:ListItem runat="server" Value="april">April</asp:ListItem>
                        <asp:ListItem runat="server" Value="may">May</asp:ListItem>
                        <asp:ListItem runat="server" Value="june">June</asp:ListItem>
                        <asp:ListItem runat="server" Value="july">July</asp:ListItem>
                        <asp:ListItem runat="server" Value="august">August</asp:ListItem>
                        <asp:ListItem runat="server" Value="september">September</asp:ListItem>
                        <asp:ListItem runat="server" Value="october">October</asp:ListItem>
                        <asp:ListItem runat="server" Value="november">November</asp:ListItem>
                        <asp:ListItem runat="server" Value="december">December</asp:ListItem>
                    </asp:DropDownList>
                     </td>
                      </tr>

                    <tr style="height:40px">
                       
                     <td style="width:10px">
                       <asp:Label ID="lblDay" runat="server" style="align-content:space-evenly" Text="Day:" ForeColor="#FFCCFF" ></asp:Label>
                     </td>

                       <%--Day Dropdown List --%>
                      <td style="width: 70px">
                       <asp:DropDownList ID="dlDay" 
                           runat="server" 
                           Height="30px" 
                           Width="170px" 
                           ToolTip="Choose your day of birth."
                           BackColor="#FFCCFF" Font-Bold="True">
                        <asp:ListItem runat="server" Value="1">1</asp:ListItem>
                        <asp:ListItem runat="server" Value="2">2</asp:ListItem>
                        <asp:ListItem runat="server" Value="3">3</asp:ListItem>
                        <asp:ListItem runat="server" Value="4">4</asp:ListItem>
                        <asp:ListItem runat="server" Value="5">5</asp:ListItem>
                        <asp:ListItem runat="server" Value="6">6</asp:ListItem>
                        <asp:ListItem runat="server" Value="7">7</asp:ListItem>
                        <asp:ListItem runat="server" Value="8">8</asp:ListItem>
                        <asp:ListItem runat="server" Value="9">9</asp:ListItem>
                        <asp:ListItem runat="server" Value="10">10</asp:ListItem>
                        <asp:ListItem runat="server" Value="11">11</asp:ListItem>
                        <asp:ListItem runat="server" Value="12">12</asp:ListItem>
                        <asp:ListItem runat="server" Value="13">13</asp:ListItem>
                        <asp:ListItem runat="server" Value="14">14</asp:ListItem>
                        <asp:ListItem runat="server" Value="15">15</asp:ListItem>
                        <asp:ListItem runat="server" Value="16">16</asp:ListItem>
                        <asp:ListItem runat="server" Value="17">17</asp:ListItem>
                        <asp:ListItem runat="server" Value="18">18</asp:ListItem>
                        <asp:ListItem runat="server" Value="19">19</asp:ListItem>
                        <asp:ListItem runat="server" Value="20">20</asp:ListItem>
                        <asp:ListItem runat="server" Value="21">21</asp:ListItem>
                        <asp:ListItem runat="server" Value="22">22</asp:ListItem>
                        <asp:ListItem runat="server" Value="23">23</asp:ListItem>
                        <asp:ListItem runat="server" Value="24">24</asp:ListItem>
                        <asp:ListItem runat="server" Value="25">25</asp:ListItem>
                        <asp:ListItem runat="server" Value="26">26</asp:ListItem>
                        <asp:ListItem runat="server" Value="27">27</asp:ListItem>
                        <asp:ListItem runat="server" Value="28">28</asp:ListItem>
                        <asp:ListItem runat="server" Value="29">29</asp:ListItem>
                        <asp:ListItem runat="server" Value="30">30</asp:ListItem>
                        <asp:ListItem runat="server" Value="31">31</asp:ListItem>
                    </asp:DropDownList>
                      </td>
                 </tr>
                 
               </table>
                   <br />

                <%-- Button to check Zodiac Sign--%>
                    <asp:Button ID="btnCheck" 
                        runat="server" 
                        class="button"
                        Text="Check my Zodiac Sign" 
                        ToolTip="Click to check your sign." 
                        OnClick="BtnSubmit_Click" />
                   <br />
                   <br />
            </asp:Panel>
            <br />
            <br />

            <%-- Panel Container for Zodiac Signs' Characteristics --%>
            <asp:Panel ID="contentPanel" runat="server" 
                style="font-family: Arial, Helvetica, sans-serif" 
                BorderStyle="Outset"
                BorderColor="#FF99FF"
                Width="1000px" 
                Height="230px" 
                BorderWidth="5px" 
                ForeColor="#FFCCFF" 
                Font-Bold="True" 
                Font-Size="Larger"
                BackColor="#660066" 
                CssClass="align-middle" 
                Font-Italic="True" 
                ><br />
                <br />
                </asp:Panel>
            <br />

          <%-- Panel Container for Zodiac Table --%>
            <asp:Panel ID="zodiacTbl" runat="server">

                <%-- Zodiac Table --%>
            <asp:Table ID="tblZodiac" runat="server" 
                BorderStyle="Solid" 
                CellPadding="10" 
                CellSpacing="10" 
                GridLines="Both" 
                ForeColor="#FFCCFF"
                style="font-family: Arial, Helvetica, sans-serif" BorderColor="White">

                <%-- table header --%>
                <asp:TableHeaderRow
                runat="server" 
                Font-Bold="true"
                BorderStyle="Solid">
                    <asp:TableHeaderCell>Zodiac Signs</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Dates</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Symbols</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Elements</asp:TableHeaderCell>
                </asp:TableHeaderRow>


                <%-- table rows --%>
                <asp:TableRow>
                    <asp:TableCell class="align-middle">Aries</asp:TableCell>
                    <asp:TableCell class="align-middle">March 21 - April 20</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9800;</asp:TableCell>
                    <asp:TableCell class="align-middle">Fire</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Taurus</asp:TableCell>
                    <asp:TableCell class="align-middle">April 21 - May 20</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9801;</asp:TableCell>
                    <asp:TableCell class="align-middle">Earth</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Gemini</asp:TableCell>
                    <asp:TableCell class="align-middle">May 21 - June 21</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9802;</asp:TableCell>
                    <asp:TableCell class="align-middle">Air</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Cancer</asp:TableCell>
                    <asp:TableCell class="align-middle">June 22 - July 22</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9803;</asp:TableCell>
                    <asp:TableCell class="align-middle">Water</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Leo</asp:TableCell>
                    <asp:TableCell class="align-middle">July 23 - August 22</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9804;</asp:TableCell>
                    <asp:TableCell class="align-middle">Fire</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Virgo</asp:TableCell>
                    <asp:TableCell class="align-middle">August 23 - September 22</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9805;</asp:TableCell>
                    <asp:TableCell class="align-middle">Earth</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Libra</asp:TableCell>
                    <asp:TableCell class="align-middle">September 23 - October 22</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9806;</asp:TableCell>
                    <asp:TableCell class="align-middle">Air</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Scorpio</asp:TableCell>
                    <asp:TableCell class="align-middle">October 23 - November 22</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9807;</asp:TableCell>
                    <asp:TableCell class="align-middle">Water</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Sagittarius</asp:TableCell>
                    <asp:TableCell class="align-middle">November 23 - December 21</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9808;</asp:TableCell>
                    <asp:TableCell class="align-middle">Fire</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Capricorn</asp:TableCell>
                    <asp:TableCell class="align-middle">December 22 - January 20</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9809;</asp:TableCell>
                    <asp:TableCell class="align-middle">Earth</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Aquarius</asp:TableCell>
                    <asp:TableCell class="align-middle">January 21 - February 18</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9810;</asp:TableCell>
                    <asp:TableCell class="align-middle">Air</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell class="align-middle">Pisces</asp:TableCell>
                    <asp:TableCell class="align-middle">February 19 - March 20</asp:TableCell>
                    <asp:TableCell class="align-middle medium18">&#9811;</asp:TableCell>
                    <asp:TableCell class="align-middle">Water</asp:TableCell>
                </asp:TableRow>

                <asp:TableFooterRow>
                    <asp:TableCell ColumnSpan="4" class="align-middle">
                        Dates, symbols and elements of the 12 zodiac signs are sorted by order of the astrological houses.
                    </asp:TableCell>
                </asp:TableFooterRow>

            </asp:Table>
                <br />
                <br />

            </asp:Panel>
        </div>

    </form>

</body>
</html>
