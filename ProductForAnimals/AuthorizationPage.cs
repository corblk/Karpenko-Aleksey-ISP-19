using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProductForAnimals
{
    public partial class AuthorizationPage : Form
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void AuthorizationPanel_Paint(object sender, PaintEventArgs e)
        {

        }

        private void EnterButton_Click(object sender, EventArgs e)
        {
            string login = LoginLabel.Text;
            string password = PasswordLabel.Text;
            AdminPage adminpage = new AdminPage();
            UserPage userpage = new UserPage();

            if (login == "" | password == "")
            {
                AlertLabel.Visible = true;
            }
            
            if (login != "" | password != "")
            {
                userpage.ShowDialog();
                this.Close();

            }
            
            if (login == "admin" && password == "admin")
            {
                adminpage.ShowDialog();
                this.Close();
            }
        }
    }
}
