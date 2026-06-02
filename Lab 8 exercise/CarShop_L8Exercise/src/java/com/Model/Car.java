/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Model;

/**
 *
 * @author DELL
 */
public class Car {
    protected int carId;
    protected String brand;
    protected String model;
    protected int cyclinder;
    protected double price;

    public Car() {}

    public Car(String brand, String model, int cyclinder, double price) {
        this.brand = brand;
        this.model = model;
        this.cyclinder = cyclinder;
        this.price = price;
    }

    public Car(int carId, String brand, String model, int cyclinder, double price) {
        this.carId = carId;
        this.brand = brand;
        this.model = model;
        this.cyclinder = cyclinder;
        this.price = price;
    }

    // Getters and Setters
    public int getCarId() { return carId; }
    public void setCarId(int carId) { this.carId = carId; }

    public String getBrand() { return brand; }
    public void setBrand(String brand) { this.brand = brand; }

    public String getModel() { return model; }
    public void setModel(String model) { this.model = model; }

    public int getCyclinder() { return cyclinder; }
    public void setCyclinder(int cyclinder) { this.cyclinder = cyclinder; }

    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}