/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Admin
 */
public class DonHang {
    private int MaDonHang;
    private String TenKhachHang;
    private int SLSanPham, TongSoTien;

    public DonHang(int MaDonHang, String TenKhachHang, int SLSanPham, int TongSoTien) {
        this.MaDonHang = MaDonHang;
        this.TenKhachHang = TenKhachHang;
        this.SLSanPham = SLSanPham;
        this.TongSoTien = TongSoTien;
    }

    public int getMaDonHang() {
        return MaDonHang;
    }

    public void setMaDonHang(int MaDonHang) {
        this.MaDonHang = MaDonHang;
    }

    public String getTenKhachHang() {
        return TenKhachHang;
    }

    public void setTenKhachHang(String TenKhachHang) {
        this.TenKhachHang = TenKhachHang;
    }

    public int getSLSanPham() {
        return SLSanPham;
    }

    public void setSLSanPham(int SLSanPham) {
        this.SLSanPham = SLSanPham;
    }

    public int getTongSoTien() {
        return TongSoTien;
    }

    public void setTongSoTien(int TongSoTien) {
        this.TongSoTien = TongSoTien;
    }
    
}
