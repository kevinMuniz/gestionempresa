/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionempresas;

import java.awt.Color;
import javax.swing.JFrame;

/**
 *
 * @author FAMILIA
 */
public class Splash extends javax.swing.JFrame {
private Progreso pro;
    public Splash() {
        initComponents();
        iniciarSplash();
        pro= new Progreso(getCargando());
        pro.start();
        setLocationRelativeTo(null);
        this.setSize(530, 350);
        pro=null;
    }
        

    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        cargando = new javax.swing.JProgressBar();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        setResizable(false);
        getContentPane().setLayout(new java.awt.BorderLayout());

        jPanel1.setLayout(new java.awt.BorderLayout());

        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/gestionempresas/SplashGestionEmpresas.JPG"))); // NOI18N
        jPanel1.add(jLabel1, java.awt.BorderLayout.CENTER);
        jPanel1.add(cargando, java.awt.BorderLayout.PAGE_END);

        getContentPane().add(jPanel1, java.awt.BorderLayout.CENTER);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JProgressBar cargando;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    // End of variables declaration//GEN-END:variables

    private void iniciarSplash() {
   this.cargando.setBorderPainted(true);
   this.cargando.setForeground(Color.lightGray);
   this.cargando.setStringPainted(true);
    }

    /**
     * @return the cargando
     */
    public javax.swing.JProgressBar getCargando() {
        return cargando;
    }

    /**
     * @param cargando the cargando to set
     */
    public void setCargando(javax.swing.JProgressBar cargando) {
        this.cargando = cargando;
    }

    

   
}
