using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using NetCare.Service;
using NetCare.Domain.Model;
using Microsoft.AspNetCore.Identity;
using System.Web;

namespace NetCare.Controllers
{
    public class DoctorController : Controller
    {
        
        private readonly INetCareService netCareService;

        public DoctorController(INetCareService netCareService)
        {
            this.netCareService = netCareService;
        }

        public async Task<IActionResult> Index(string searchString)
        {

            if (!ModelState.IsValid)
                return View();

            bool isAuthenticated = (User.Identity.IsAuthenticated);


            if (isAuthenticated)
            {
                if (!String.IsNullOrEmpty(searchString))
                {
                    var lstDoctor = await netCareService.SearchDoctors(searchString);
                    return View(lstDoctor);
                }
                else
                {
                    var lstDoctor = await netCareService.GetAllDoctors();
                    return View(lstDoctor);
                }
                
            }

            ModelState.AddModelError("", "Invalid UserName or Password");
            return View();           
        }
        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind] Doctor doctor)
        {
            if (ModelState.IsValid)
            {
                await netCareService.AddDoctor(doctor);
                return RedirectToAction("Index");
            }
            return View(doctor);
        }


        [HttpGet]
        public async Task<IActionResult> Edit(string IDNo)
        {
            if (string.IsNullOrEmpty(IDNo))
            {
                return NotFound();
            }
            Doctor doctor = await netCareService.GetDoctorData(IDNo);

            if (doctor == null)
            {
                return NotFound();
            }
            return View(doctor);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(string IDNo, [Bind] Doctor doctor)
        {
            if (IDNo != doctor.IDNo)
            {
                return NotFound();
            }
            if (ModelState.IsValid)
            {
                await netCareService.UpdateDoctor(doctor);
                return RedirectToAction("Index");
            }
            return View(doctor);
        }

        [HttpGet]
        public async Task<IActionResult> Details(string IDNo)
        {
            if (string.IsNullOrEmpty(IDNo))
            {
                return NotFound();
            }
            Doctor doctor = await netCareService.GetDoctorData(IDNo);
            if (doctor == null)
            {
                return NotFound();
            }
            return View(doctor);
        }

        [HttpGet]
        public async Task<IActionResult> Delete(string IDNo)
        {
            if (string.IsNullOrEmpty(IDNo))
            {
                return NotFound();
            }
            Doctor doctor = await netCareService.GetDoctorData(IDNo);

            if (doctor == null)
            {
                return NotFound();
            }
            return View(doctor);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(string IDNo)
        {
            netCareService.DeleteDoctor(IDNo);
            return RedirectToAction("Index");
        }
    }
}
