package com.example.carmanagment;

public class Cars {
    private int carid;
    private String carname;
    private int carmry;
    private int price;

    public Cars(int carid, String carname, int carmry, int price) {
        this.carid = carid;
        this.carname = carname;
        this.carmry = carmry;
        this.price = price;
    }

    public int getCarid() {
        return carid;
    }
    public String getCarname() {
        return carname;
    }
    public int getCarmry() {
        return carmry;
    }
    public int getPrice() {
        return price;
    }
}
