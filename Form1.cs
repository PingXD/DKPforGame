using System;
using System.Data;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
namespace DKP
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }
        
        private void button4_Click(object sender, EventArgs e)//添加角色
        {   
            string NameID = GameID.Text;
            string constr = string.Format("Database=Exam;Data Source = IP; User Id = root; Password=密码;CharSet=utf8;port=3306;Allow User Variables=True");
            MySqlConnection conn = new MySqlConnection(constr);
            string sqlcom = string.Format("INSERT INTO DKP (Name,DKPTotal) VALUES ('{0}','0')", NameID);
            //MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom, conn);
            conn.Open();
            MySqlCommand sqlco = new MySqlCommand(sqlcom, conn);
            
            int r = sqlco.ExecuteNonQuery();
            if (r == 1)
            {
                MessageBox.Show("添加成功");
                checkedListBox1.Items.Clear();
                
                
                string sqlcom1 = string.Format("select Name from DKP");
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom1, conn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                //checkedListBox1 = dt;
                //checkedListBox1.DisplayMember = "Name";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    this.checkedListBox1.Items.Add(dt.Rows[i][0], false);//设置不选定                            
                }
            }
            else
            {
                MessageBox.Show("!!!!!!!!!添加失败!!!!!!!!! ");
            }
            conn.Close();
        }

        private void button6_Click(object sender, EventArgs e)//查询角色DKP
        {
            if (caxunID.Text == "")
            {
                MessageBox.Show("请输入角色ID");
            }
            else
            {
                string NameIDcaxun = caxunID.Text;
                string constr = string.Format("Database=Exam;Data Source = IP; User Id = root; Password=密码;CharSet=utf8;port=3306;Allow User Variables=True");
                MySqlConnection conn = new MySqlConnection(constr);
                string sqlcom = string.Format("select * from DKP where Name='{0}' ", NameIDcaxun);
                MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom, conn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                string DKPnumbercaxun = dt.Rows[0][7].ToString();
                DKPnumlabel.Text = DKPnumbercaxun;
            }
            
        }

        private void read_Click(object sender, EventArgs e)//读取到列表1
        {

            checkedListBox1.Items.Clear();
            string constr = string.Format("Database=Exam;Data Source = IP; User Id = root; Password=密码;CharSet=utf8;port=3306;Allow User Variables=True");
            MySqlConnection conn = new MySqlConnection(constr);
            string sqlcom = string.Format("select Name from DKP");
            MySqlDataAdapter sda = new MySqlDataAdapter(sqlcom, conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            //checkedListBox1 = dt;
            //checkedListBox1.DisplayMember = "Name";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                this.checkedListBox1.Items.Add(dt.Rows[i][0], false);//设置不选定                            
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {

            
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == "增加")
            {
                int dkpaddnum = Convert.ToInt32(addDKPnum.Text);
                string constr = string.Format("Database=Exam;Data Source = IP; User Id = root; Password=密码;port=3306;Allow User Variables=True;CharSet=utf8;");
                MySqlConnection conn = new MySqlConnection(constr);
                conn.Open();
                string selectedItem = string.Empty;
                for (int i = 0; i < checkedListBox1.Items.Count; i++)
                {
                    if (checkedListBox1.GetItemChecked(i))
                    {
                        selectedItem = checkedListBox1.Items[i].ToString();
                        string sqlcom = string.Format("update DKP Set DKPTotal = DKPTotal+{0} where Name='{1}';", dkpaddnum, selectedItem);
                        MySqlCommand sqlcommd = new MySqlCommand(sqlcom, conn);
                        sqlcommd.ExecuteNonQuery();
                    }
                }
                for (int i = 0; i < checkedListBox1.Items.Count; i++)
                {
                    if (checkedListBox1.GetItemChecked(i))
                    {
                        selectedItem = selectedItem + "   " + checkedListBox1.Items[i].ToString();


                    }


                }

                string remark = textRemark.Text;
                string time = DateTime.Now.ToString();
                string sqlcomlog = string.Format("insert into modifyLog values ('','{0}','{1}','加{2}','{3}')", remark, selectedItem,dkpaddnum,time);
                MySqlCommand sqlcommdlog = new MySqlCommand(sqlcomlog, conn);
                sqlcommdlog.ExecuteNonQuery();
                MessageBox.Show("增加DKP成功");

                conn.Close();

            }




            else if (comboBox1.Text == "减少")
            {
                int dkpaddnum = Convert.ToInt32(addDKPnum.Text);
                string constr = string.Format("Database=Exam;Data Source = IP; User Id = root; Password=密码;CharSet=utf8;port=3306;Allow User Variables=True");
                MySqlConnection conn = new MySqlConnection(constr);
                conn.Open();
                string selectedItem = string.Empty;
                for (int i = 0; i < checkedListBox1.Items.Count; i++)
                {
                    if (checkedListBox1.GetItemChecked(i))
                    {
                        selectedItem = checkedListBox1.Items[i].ToString();
                        string sqlcom = string.Format("update DKP Set DKPTotal = DKPTotal-{0} where Name = '{1}'", dkpaddnum, selectedItem);
                        MySqlCommand sqlcommd = new MySqlCommand(sqlcom, conn);
                        sqlcommd.ExecuteNonQuery();
                    }
                }
                for (int i = 0; i < checkedListBox1.Items.Count; i++)
                {
                    if (checkedListBox1.GetItemChecked(i))
                    {
                        selectedItem = selectedItem + "   " + checkedListBox1.Items[i].ToString();


                    }
                    
                  
                }
                
                string remark = textRemark.Text;
                string time = DateTime.Now.ToString();
                string sqlcomlog = string.Format("insert into modifyLog values ('','{0}','{1}','减{2}','{3}')", remark, selectedItem, dkpaddnum,time);
                MySqlCommand sqlcommdlog = new MySqlCommand(sqlcomlog, conn);
                sqlcommdlog.ExecuteNonQuery();
                conn.Close();
                MessageBox.Show("减少DKP成功");
            }
            else
            {
                MessageBox.Show("请选择添加或减少");
            }


            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.Text = "增加";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
