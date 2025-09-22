using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace StudentWebApp.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ApiController : ControllerBase
    {
        private List<Dictionary<string, string>> student_dict = new List<Dictionary<string, string>>

        {

            new Dictionary<string, string>{{"id","1"},{"name","Sachin"}},

            new Dictionary<string, string>{{"id","2"},{"name","Rahul"}},

        };

    }
}
