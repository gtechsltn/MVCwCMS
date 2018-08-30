﻿using System;

namespace MVCwCMS.Models
{
    public class BaseObject : Object
    {
        public DateTime? CreatedDate { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public Guid? ModifiedBy { get; set; }
        public Guid? CreatedBy { get; set; }

        public BaseObject()
        {
            CreatedDate = DateTime.Now;
        }
    }

    //
    // Order: Bán hàng
    //
    public class Order : BaseObject
    {
        public Order()
        {
        }
    }

    //
    // Purchase: Nhập hàng
    //
    public class Purchase : BaseObject
    {
        public Purchase()
        {
        }
    }

    //
    // Inventory: Kho hàng (Hàng tồn)
    //
    public class Inventory : BaseObject
    {
        public Inventory()
        {
        }
    }

    //
    // 1. Product: Hàng hóa (Sản phẩm)
    //
    public class Product : BaseObject
    {
        public int Id { get; set; }             // Khóa chính
        public string Name { get; set; }        // Tên sản phẩm
        public string Code { get; set; }        // Mã sản phẩm (tìm kiếm nhanh)
        public string Description { get; set; } // Miêu tả sản phẩm
        public string ImageUrl { get; set; }    // Đường dẫn tương đối đến ảnh sản phẩm
        public decimal? Price { get; set; }      // Giá sản phẩm
        public int? CategoryId { get; set; }     // Nhóm sản phẩm

        public Product()
        {
        }
    }

    //
    // 2. ProductCategory: Nhóm sản phẩm
    //

    public class ProductCategory : BaseObject
    {
        public int Id { get; set; }                 // Khóa chính
        public string Name { get; set; }            // Tên nhóm sản phẩm
        public string Description { get; set; }     // Miêu tả nhóm sản phẩm
        public int? ParentId { get; set; }          // Khóa của nhóm sản phẩm cha

        public ProductCategory()
        {
        }
    }

    //
    // Promotion: Chương trình khuyến mại
    //
    public class Promotion : BaseObject
    {
        public Promotion()
        {
        }
    }

    //
    // Customer: Khách hàng
    //
    public class Customer : BaseObject
    {
        public Customer()
        {
        }
    }

    //
    // CustomerGroup: Nhóm khách hàng
    //
    public class CustomerGroup : BaseObject
    {
        public CustomerGroup()
        {
        }
    }

    //
    // Supplier: Nhà cung cấp
    //
    public class Supplier : BaseObject
    {
        public Supplier()
        {
        }
    }

    //
    // Income: Phiếu thu
    //
    public class Income : BaseObject
    {
        public Income()
        {
        }
    }

    //
    // Outcome: Phiếu chi
    //
    public class Outcome : BaseObject
    {
        public Outcome()
        {
        }
    }

    //
    // Ledger: Sổ cái
    //
    public class Ledger : BaseObject
    {
        public Ledger()
        {
        }
    }

    //
    // Revenues: Báo cáo
    //
    public class Revenues : BaseObject
    {
        public Revenues()
        {
        }
    }

    //
    // Employee: Nhân viên
    //
    public class Employee : BaseObject
    {
        public Employee()
        {
        }
    }

    //
    // Setting: Thiết lập
    //
    public class Setting : BaseObject
    {
        public Setting()
        {
        }
    }

    //
    // Vai trò của người dùng trong tổ chức
    //
    public enum OrganizationRole
    {
        CN1,                // Chi nhánh 2
        CN2,                // Chi nhánh 1
        Tier2,              // Đại lý cấp 2
        Tier1,              // Đại lý cấp 1
        Agency,             // Tổng đại lý
        NPP2,               // Nhà phân phối 2
        NPP1,               // Nhà phân phối 1
        Director,           // Giám đốc kinh doanh
        BigBoss,            // Tổng giám đốc
    }

    //
    // Vai trò của người dùng đối với phần mềm bán hàng
    //
    public enum UserRole
    {
        Boss,       // Chủ cửa hàng
        Manager,    // Quản lý
        Staff,      // Nhân viên kho
        Cashier,    // Nhân viên thu ngân
        Salesman    // Nhân viên bán hàng
    }

    //
    // Hình Thức Thanh Toán: (Tiền mặt | Thẻ | Chuyển khoản)
    //
    public enum PaymentMethod
    {
        Cash,       // Tiền mặt
        Card,       // Thẻ
        Transfer    // Chuyển khoản
    }

    //
    // Trạng thái đơn hàng: Lưu tạm | Hoàn thành
    //
    public enum OrderStatus
    {
        Draft,      // Lưu tạm
        Done,       // Hoàn thành
    }

    //
    // Những chuỗi được định nghĩa sẵn
    //
    public class CommonString
    {
        public static string Title = "Lamer Care";
        public static string TitleVN = "Mỹ phẩm xanh cho làn da đẹp";
    }
}