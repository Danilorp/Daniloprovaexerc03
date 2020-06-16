using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Daniloprovaexerc03
{
    public partial class aluno : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPesquisa_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = conexao.Connection;

                cmd.CommandText = @"select * from aluno
                                    where ra = ?";
                cmd.Parameters.Clear();
                cmd.Parameters.Add(@"ra", MySqlDbType.String).Value = txtRa.Text;
                cmd.CommandType = CommandType.Text;
                conexao.Conectar();
                cmd.ExecuteNonQuery();
                MySqlDataReader ListaAluno;
                ListaAluno = cmd.ExecuteReader();
                ListaAluno.Read();
                txtNome.Text = ListaAluno.GetString(1);
                txtSexo.Text = ListaAluno.GetString(2);
                txtNascimento.Text = ListaAluno.GetString(3);
                txtEmail.Text = ListaAluno.GetString(4);
                txtEndereco.Text = ListaAluno.GetString(5);
                txtCurso.Text = ListaAluno.GetString(6);
                txtAno.Text = ListaAluno.GetString(7);

                
            }
            catch (Exception)
            {
                lblInformacao.Text = "Codigo do aluno não encontrado";                
            }
            finally
            {
                conexao.Desconectar();
            }
        }
    }

}
