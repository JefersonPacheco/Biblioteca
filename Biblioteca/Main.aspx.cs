using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biblioteca
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public List<Livro> listaDeLivros
        {
            get
            {
                return (List<Livro>)Session["tbl_livros"];
            }
            set
            {
                Session["tbl_livros"] = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                listaDeLivros = new List<Livro>();
                limparCampos();
            }
        }

        private void limparCampos()
        {
            txtIsbn.Text = "";
            txtAutor.Text = "";
            txtTitulo.Text = "";
        }

        public void AtualizarGrid()
        {
            gvLivros.DataSource = listaDeLivros;
            gvLivros.DataBind();
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            limparCampos();
        }

        protected void btnIncluir_Click(object sender, EventArgs e)
        {
            Livro l = new Livro();
            l.Isbn = txtIsbn.Text;
            l.Titulo = txtTitulo.Text;
            l.Autor = txtAutor.Text;

            listaDeLivros.Add(l);

            AtualizarGrid();
            limparCampos();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Livro l;
            if (buscarLivro(txtIsbn.Text) == null)
                Mensagem("Este livro não existe!");
            else { 
                l = buscarLivro(txtIsbn.Text);
                txtAutor.Text = l.Autor;
                txtTitulo.Text = l.Titulo;
            }
            AtualizarGrid();
        }

        protected void btnAlterar_Click(object sender, EventArgs e)
        {
            Livro l;
            if (buscarLivro(txtIsbn.Text) != null)
            {
                l = buscarLivro(txtIsbn.Text);
                l.Autor = txtAutor.Text;
                l.Titulo = txtTitulo.Text;
                AtualizarGrid();
            }
            else
                Mensagem("Este livro não existe!");
        }

        protected void btnExcluir_Click(object sender, EventArgs e)
        {
            if (buscarLivro(txtIsbn.Text) != null)
                listaDeLivros.Remove(buscarLivro(txtIsbn.Text));
            else
                Mensagem("Este livro não existe!");
            AtualizarGrid();
                
        }

        public Livro buscarLivro(String isbn)
        {
            Livro liv = null;
            foreach(Livro l in listaDeLivros)
            {
                if (l.Isbn.Equals(isbn))
                    liv = l;
            }
            return liv;
        }

        public void Mensagem(string Msg)
        {
            Response.Write($"<script>alert('{Msg}');</script>");
        }
    } 
}