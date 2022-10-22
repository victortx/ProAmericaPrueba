using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ProAmericaPrueba.Model;
using System;
using System.Reflection;
using System.Threading.Tasks;
using System.Web.UI;

namespace ProAmericaPrueba
{
    public partial class _Default : Page
    {

        public AuthenticateModel auth { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void login_btn(object sender, EventArgs e)
        {
            // Se valida si se ingresan todos los datos del formulario
            if (Page.IsValid)
            {
                // Se serizaliza los datos para no mandarlos corruptos
                alertMessage.Text = "Los datos son validos";
            }
        }

    }
}