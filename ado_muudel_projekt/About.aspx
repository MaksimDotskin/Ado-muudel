<%@ Page Title="Õpilased tabelina" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ado_muudel_projekt.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Õpilased seisuga 4.03.24</h3>
<h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="opilaneId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="opilaneId" HeaderText="opilaneId" ReadOnly="True" SortExpression="opilaneId" InsertVisible="False" />
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
            <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" />
            <asp:BoundField DataField="keskmine_hinne" HeaderText="keskmine_hinne" SortExpression="keskmine_hinne" />
            <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
            <asp:BoundField DataField="osakond" HeaderText="osakond" SortExpression="osakond" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekool_DotskinConnectionString1 %>" DeleteCommand="DELETE FROM [OpilaneSet] WHERE [opilaneId] = @opilaneId" InsertCommand="INSERT INTO [OpilaneSet] ([eesnimi], [perenimi], [synniaeg], [Ryhm_ryhmId], [keskmine_hinne]) VALUES (@eesnimi, @perenimi, @synniaeg, @Ryhm_ryhmId, @keskmine_hinne)" SelectCommand="SELECT OpilaneSet.opilaneId, OpilaneSet.eesnimi, OpilaneSet.perenimi, OpilaneSet.synniaeg, OpilaneSet.keskmine_hinne, RyhmSet.ryhmNimi, RyhmSet.osakond FROM OpilaneSet INNER JOIN RyhmSet ON OpilaneSet.Ryhm_ryhmId = RyhmSet.ryhmId" UpdateCommand="UPDATE [OpilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [synniaeg] = @synniaeg, [Ryhm_ryhmId] = @Ryhm_ryhmId, [keskmine_hinne] = @keskmine_hinne WHERE [opilaneId] = @opilaneId">
        <DeleteParameters>
            <asp:Parameter Name="opilaneId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="synniaeg" />
            <asp:Parameter Name="Ryhm_ryhmId" Type="Int32" />
            <asp:Parameter Name="keskmine_hinne" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="synniaeg" />
            <asp:Parameter Name="Ryhm_ryhmId" Type="Int32" />
            <asp:Parameter Name="keskmine_hinne" Type="Decimal" />
            <asp:Parameter Name="opilaneId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
&nbsp;</h3>
    <p></p>
</asp:Content>
