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

        //Api get thông tin một sổ tiết kiệm dựa vào mã sổ.
        [HttpGet]
        [Route("api/sotietkiem/getmotsotietkiem/{MaSoTietKiem}")]
        public IHttpActionResult GetThongTinMotSoTietKiem(string MaSoTietKiem)
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                if(ctx.SoTietKiems.Any(o =>o.MaSoTietKiem == MaSoTietKiem))
                {
                    var list = ctx.SoTietKiems
                    .Select(c => new
                    {
                        c.MaSoTietKiem,
                        c.MaKH,
                        c.NgayMoSo,
                        c.NgayHetHan,
                        c.SoDu,
                        c.LoaiSo,
                        c.Status
                    })
                    .Where(c => c.MaSoTietKiem == MaSoTietKiem)
                    .ToList();
                    return Ok(list);
                }                
            }
            return Ok("null");
        }

        //Api update thông tin sổ tiết kiệm.
        [HttpPost]
        [Route("api/sotietkiem/update")]
        public HttpResponseMessage UpdateThongTinSoTietKiem([FromBody]SoTietKiem SoTietKiem)
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                if (ctx.SoTietKiems.Any(o => o.MaSoTietKiem == SoTietKiem.MaSoTietKiem))
                {
                    var stk = ctx.SoTietKiems.Find(SoTietKiem.MaSoTietKiem);
                    try
                    {
                        stk.MaKH = SoTietKiem.MaKH;
                        stk.NgayMoSo = SoTietKiem.NgayMoSo;
                        stk.NgayHetHan = SoTietKiem.NgayHetHan;
                        stk.SoDu = SoTietKiem.SoDu;
                        stk.Status = SoTietKiem.Status;
                        stk.LoaiSo = SoTietKiem.LoaiSo;
                        ctx.SaveChanges();
                        return Request.CreateResponse(HttpStatusCode.Accepted,"ok");
                    }
                    catch (Exception ex)
                    {
                        //Code bắt lỗi
                    }
                }
                else
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "so tiet kiem khong ton tai");
                return Request.CreateResponse(HttpStatusCode.BadRequest,"fail");
            }
        }

        //Api nộp tiền vào sổ tiết kiệm
        [HttpPost]
        [Route("api/sotietkiem/noptien")]
        public HttpResponseMessage NopTien([FromBody] PhieuNopTienVaoSoTietKiem PhieuNopTienVaoSoTietKiem)
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                // Kiem tra ma khach hang nay co ton tai chua?
                if (ctx.SoTietKiems.Any(o => o.MaSoTietKiem == PhieuNopTienVaoSoTietKiem.MaSoTietKiem))
                {
                    var ma = PhatSinhMaPhieuNopTien();// Gọi hàm sinh mã sổ tiết kiệm.

                    // Kiem tra Ma so tiet kiem da ton tai chua?
                    if (!ctx.PhieuNopTienVaoSoTietKiems.Any(o => o.MaPhieuNopTien == ma))
                    {
                        try
                        {
                            PhieuNopTienVaoSoTietKiem.MaPhieuNopTien = ma;
                            ctx.PhieuNopTienVaoSoTietKiems.Add(PhieuNopTienVaoSoTietKiem);
                            ctx.SaveChanges();
                            if(TangTien(PhieuNopTienVaoSoTietKiem.MaSoTietKiem,PhieuNopTienVaoSoTietKiem.SoTien) == true)
                            {
                                return Request.CreateResponse(HttpStatusCode.Created,"Thanh cong");
                            }
                        }
                        catch (Exception)
                        {
                            //Code bắt lỗi
                        }
                    }
                    else
                        return Request.CreateResponse(HttpStatusCode.Found, "Ma phieu nop tien tiet kiem da ton tai!");
                }
                else
                    return Request.CreateResponse(HttpStatusCode.NotFound, "Ma so tiet kiem nay khong ton tai!");
            }
            return Request.CreateResponse(HttpStatusCode.Created, "That bai");
        }       

        //Hàm tăng tiền trong sổ tiết kiệm
        public bool TangTien(string MaSoTietKiem, int? SoTien)
        {
            using (NganHangEntities ctx = new NganHangEntities())
            {
                try
                {
                    var soTietKiem = ctx.SoTietKiems.Find(MaSoTietKiem);
                    soTietKiem.SoDu += SoTien;
                    ctx.SaveChanges();
                    return true;
                }
                catch (Exception)
                {
                    //Code bắt lỗi.
                }
            }
            return false;
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
        //Hàm tự tăng mã phiếu nộp tiền.
        public string PhatSinhMaPhieuNopTien()
        {
            NganHangEntities ctx = new NganHangEntities();

            var count = ctx.PhieuNopTienVaoSoTietKiems.Count();
            if (count == 0)
            {
                return "PNTSTK1";
            }
            var temp = (from c in ctx.PhieuNopTienVaoSoTietKiems orderby c.MaPhieuNopTien descending select c).First().MaPhieuNopTien;

            var temp3 = "null";
            do
            {
                var temp2 = int.Parse(temp.Trim().Remove(0, 6));
                temp2 += 1;
                temp3 = "PNTSTK" + temp2.ToString();
            }
            while (ctx.PhieuNopTienVaoSoTietKiems.Any(o => o.MaPhieuNopTien == temp3) && temp3.CompareTo("null") == 0);

            return temp3;
        }

    }
}
