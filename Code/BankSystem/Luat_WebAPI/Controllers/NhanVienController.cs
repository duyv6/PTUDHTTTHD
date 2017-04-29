using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Luat_WebAPI.Models;

namespace Luat_WebApi.Controllers
{
    public class NhanVienController : ApiController
    {
        [HttpGet]
        [Route("api/nhanvien/hello")]
        public IHttpActionResult hello()
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                var list = ctx.NhanViens
                    .Select(c => new
                    {
                        c.MaNhanVien
                        
                    }).ToList();
                return Ok(list);
            }                
        }
    }
}
