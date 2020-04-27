using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UTS_SISTER_0074 : System.Web.UI.Page
{

    public void bersih()
    {
        txtNamaDesa.Text = "";
        txtRt.Text = "";
        txtRw.Text = "";
        txtKecamatan.Text = "";
        txtOdp.Text = "";
    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("Id"), new DataColumn("Nama Desa"), 
                new DataColumn("RT"), new DataColumn("RW"), new DataColumn("Kecamatan"), 
                new DataColumn("Jumlah ODP") });

            dt.Rows.Add(1, "", "", "", "", "");
            dt.Rows.Add(2, "", "", "", "", "");
            dt.Rows.Add(3, "", "", "", "", "");
            dt.Rows.Add(4, "", "", "", "", "");
            dt.Rows.Add(5, "", "", "", "", "");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }


    static int i = 0;
    protected void btninput_Click(object sender, EventArgs e)
    {
        try
        {

            webService.Service objek = new webService.Service();

            int jmlODP = objek.ODP(Convert.ToInt32(txtOdp.Text));
            lblInput.Text = "jumlah ODP : " + jmlODP.ToString() + " Telah di input";


            foreach (GridViewRow row in GridView1.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    if (row.RowIndex == i)
                    {
                        Label lb11 = (Label)row.FindControl("Label1");
                        Label lb12 = (Label)row.FindControl("Label2");
                        Label lb13 = (Label)row.FindControl("Label3");
                        Label lb14 = (Label)row.FindControl("Label4");
                        Label lb15 = (Label)row.FindControl("Label5");
                        lb11.Text = txtNamaDesa.Text;
                        lb12.Text = txtRt.Text;
                        lb13.Text = txtRw.Text;
                        lb14.Text = txtKecamatan.Text;
                        lb15.Text = txtOdp.Text;
                    }
                }
            }
            i++;
            bersih();
        }
        catch (Exception x)
        {
            Response.Write(x +"EROR BOS");
        }

    }
}