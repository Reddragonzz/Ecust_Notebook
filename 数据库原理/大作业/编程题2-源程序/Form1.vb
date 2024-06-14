Imports System.Data
Imports System.Data.OleDb
Public Class Form1

    Private Sub 录取信息ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles 录取信息ToolStripMenuItem.Click
        Dim s As String
        s = "select * from 录取表"
        ShowData(s)
    End Sub
    Sub ShowData(ByVal s As String)
        Dim conStr As String
        conStr = "Provider = Microsoft.ACE.OLEDB.12.0 ; Data Source = University.accdb"
        Dim conn As OleDbConnection
        conn = New OleDbConnection(conStr)
        Dim adp As OleDbDataAdapter
        adp = New OleDbDataAdapter(s, conn)
        Dim ds As New DataSet
        adp.Fill(ds, "a")
        DataGridView1.DataSource = ds.Tables("a")
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim s As String
        s = "select * from 录取表 where 录取日期=#" & TextBox1.Text & "#"
        ShowData(s)
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim conStr As String
        conStr = "Provider = Microsoft.ACE.OLEDB.12.0 ; Data Source = University.accdb"
        Dim conn As OleDbConnection
        conn = New OleDbConnection(conStr)
        Dim cmd As OleDbCommand
        Dim sql As String
        sql = "insert into 录取表 values('" & TextBox2.Text & "'," & TextBox3.Text & ",#" & TextBox4.Text & "#)"
        cmd = New OleDbCommand(sql, conn)
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        Dim s As String
        s = "select * from 录取表"
        ShowData(s)
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim str, sqlstr, conStr As String
        conStr = "Provider = Microsoft.ACE.OLEDB.12.0 ; Data Source = University.accdb"
        Dim conn As OleDbConnection
        conn = New OleDbConnection(conStr)
        Dim cmd As OleDbCommand
        Dim sql As String
        str = DataGridView1.CurrentRow.Cells(0).Value
        sqlstr = "delete from 录取表 where 高校 = '" & str & "'"
        cmd = New OleDbCommand(sqlstr, conn)
        conn.Open()
        cmd.ExecuteNonQuery()
        conn.Close()
        sqlstr = "select * from 录取表"
        ShowData(sqlstr)
    End Sub
End Class
