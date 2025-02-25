﻿using CsvHelper;
using System;
using System.Collections;
using System.IO;
using System.Web.Mvc;

namespace MVCwCMS.Controllers
{
    public partial class AdminController : AdminBaseController
    {
        [HttpGet]
        public void ExportToExcel(string id)
        {
            Response.Clear();
            Response.ClearHeaders();
            using (TextWriter textWriter = new StreamWriter(Response.OutputStream))
            {
                using (CsvWriter csvWriter = new CsvWriter(textWriter))
                {
                    if (id.IsNotEmptyOrWhiteSpace() && Session["Data_" + id].IsNotNull())
                    {
                        Type dataType = Type.GetType("MVCwCMS.Models." + id + "Map");
                        if (dataType.IsNotNull())
                        {
                            csvWriter.Configuration.RegisterClassMap(dataType);
                        }
                        csvWriter.WriteRecords(Session["Data_" + id] as IEnumerable);
                    }
                    else
                    {
                        csvWriter.WriteField(Resources.Strings.NoDataFound);
                        csvWriter.NextRecord();
                    }
                }
            }
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment; filename=Export_" + id + "_" + DateTime.Now.ToString("yyyy-MM-dd_HH-mm-ss") + ".csv");
            Response.End();
        }
    }
}