using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Luat_WebAPI.Models;

namespace WebApi.Controllers
{
    public class SoTietKiemController : ApiController
    {
        //Api kiểm tra tài khoản khách hàng đã mở sổ tiết kiệm chưa? Ghi chú: mỗi khách hàng chỉ được mở một sổ tiết kiệm.
        [HttpGet]
        [Route("api/sotietkiem/kiemtrakhachhangdacosotietkiem/{MaKH}")]
        public HttpResponseMessage KiemTraKhachHangDaCoSoTietKiemChua(string MaKH)
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                if (ctx.KhachHangs.Any(o => o.MaKH == MaKH))
                {
                    if (ctx.SoTietKiems.Any(o => o.MaKH == MaKH))
                    {
                        return Request.CreateResponse(HttpStatusCode.Found);
                    }
                }
                else
                    return Request.CreateResponse(HttpStatusCode.NotFound);
                
            }
            return Request.CreateResponse(HttpStatusCode.Created);
        }

        //Api thêm mới sổ tiết kiệm
        [HttpPost]
        [Route("api/sotietkiem/themsotietkiem")]
        public HttpResponseMessage ThemSoTietKiem([FromBody]SoTietKiem SoTietKiem)
        {
            using (NganHangEntities ctx=new NganHangEntities())
            {
                // Kiem tra ma khach hang nay co ton tai chua?
                if(ctx.KhachHangs.Any(o => o.MaKH == SoTietKiem.MaKH))
                {
                    var ma = PhatSinhMa();// Gọi hàm sinh mã sổ tiết kiệm.

                    // Kiem tra Ma so tiet kiem da ton tai chua?
                    if(!ctx.SoTietKiems.Any(o => o.MaSoTietKiem ==  ma))
                    {
                        SoTietKiem.MaSoTietKiem = ma;
                        ctx.SoTietKiems.Add(SoTietKiem);
                        ctx.SaveChanges();
                    }
                    else
                        return Request.CreateResponse(HttpStatusCode.Found,"Ma so tiet kiem da ton tai!");
                }
                else
                    return Request.CreateResponse(HttpStatusCode.NotFound,"Ma KH nay khong ton tai!");
            }
            return Request.CreateResponse(HttpStatusCode.Created,"Thanh cong.");
        }

        //Hàm tự tăng mã sổ tiết kiệm.        
        public string PhatSinhMa()
        {
            NganHangEntities ctx = new NganHangEntities();

            var count = ctx.SoTietKiems.Count();
            if(count == 0)
            {
                return "STK1";
            }
            var temp = (from c in ctx.SoTietKiems orderby c.MaSoTietKiem descending select c).First().MaSoTietKiem;
            
            var temp3 = "null";
            do
            {
                var temp2 = int.Parse(temp.Trim().Remove(0, 3));
                temp2 += 1;
                temp3 = "STK" + temp2.ToString();
            }
            while (ctx.SoTietKiems.Any(o => o.MaSoTietKiem == temp3) && temp3.CompareTo("null") == 0);
            
            return temp3;
        }

    }
}
