/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import QuanLy.DAO.MyConnect;
import QuanLy.GUI.DangNhap;

public class Main {

    public static void main(String[] args) {
        new MyConnect();

        DangNhap login = new DangNhap();
        login.showWindow();
    }
}
