/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionempresas;


import javax.swing.JFrame;
import javax.swing.JProgressBar;

/**
 *
 * @author FAMILIA
 */
public class Progreso extends Thread{
JProgressBar barraprogreso;
 
public Progreso(JProgressBar progresobar){
    super();
    this.barraprogreso=progresobar;
}
public void run(){
    for(int i=1; i<=100;i++){
        barraprogreso.setValue(i);
        parar(100);
        if(i==100){
            new Login().setVisible(true); 
        }
    }
}
public void parar(int mlSeg){
    try{
     Thread.sleep(mlSeg);
    }catch(Exception e){}
}
    
}
