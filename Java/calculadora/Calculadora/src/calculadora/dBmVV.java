/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadora;

import java.awt.Toolkit;

/**
 *
 * @author Camil
 */
public class dBmVV extends javax.swing.JFrame {

    /**
     * Creates new form dBmVV
     */
    public dBmVV() {
        initComponents();
        this.setLocationRelativeTo(null);
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/imagenes/Icon.PNG")));
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        num = new javax.swing.JTextField();
        Calcular = new javax.swing.JButton();
        ecuacion = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        Resultado = new javax.swing.JLabel();
        Borrar = new javax.swing.JButton();
        back = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        num.setBackground(new java.awt.Color(233, 233, 233));
        num.setFont(new java.awt.Font("Consolas", 0, 12)); // NOI18N
        num.setForeground(new java.awt.Color(65, 79, 91));
        num.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                numActionPerformed(evt);
            }
        });
        num.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                numKeyTyped(evt);
            }
        });
        getContentPane().add(num, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 80, 240, -1));

        Calcular.setBackground(new java.awt.Color(233, 233, 233));
        Calcular.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        Calcular.setForeground(new java.awt.Color(65, 79, 91));
        Calcular.setText("Calcular");
        Calcular.setBorderPainted(false);
        Calcular.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Calcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CalcularActionPerformed(evt);
            }
        });
        getContentPane().add(Calcular, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 120, -1, -1));

        ecuacion.setFont(new java.awt.Font("Constantia", 1, 18)); // NOI18N
        ecuacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagenes/WhatsApp Image 2021-02-22 at 9.44.42 AM.jpeg"))); // NOI18N
        ecuacion.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(204, 204, 204)));
        getContentPane().add(ecuacion, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 20, -1, 50));

        jLabel2.setFont(new java.awt.Font("Constantia", 1, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(233, 233, 233));
        jLabel2.setHorizontalAlignment(javax.swing.SwingConstants.LEFT);
        jLabel2.setText("Resultado: ");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 170, -1, -1));

        Resultado.setFont(new java.awt.Font("Consolas", 1, 14)); // NOI18N
        Resultado.setForeground(new java.awt.Color(233, 233, 233));
        Resultado.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(Resultado, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 200, 270, 40));

        Borrar.setBackground(new java.awt.Color(233, 233, 233));
        Borrar.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        Borrar.setForeground(new java.awt.Color(65, 79, 91));
        Borrar.setText("Borrar");
        Borrar.setBorderPainted(false);
        Borrar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Borrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BorrarActionPerformed(evt);
            }
        });
        getContentPane().add(Borrar, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 120, -1, -1));

        back.setBackground(new java.awt.Color(233, 233, 233));
        back.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        back.setForeground(new java.awt.Color(65, 79, 91));
        back.setText("Volver");
        back.setBorderPainted(false);
        back.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        back.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                backActionPerformed(evt);
            }
        });
        getContentPane().add(back, new org.netbeans.lib.awtextra.AbsoluteConstraints(6, 6, -1, -1));

        jPanel1.setBackground(new java.awt.Color(25, 25, 25));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 330, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 260, Short.MAX_VALUE)
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 330, 260));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void numActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_numActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_numActionPerformed

    private void numKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_numKeyTyped

    }//GEN-LAST:event_numKeyTyped

    private void CalcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CalcularActionPerformed
        String a = this.num.getText();

        try{
            double variable = Double.parseDouble(a);
            double dB = (0.001)*Math.pow(10,(variable/20));
            this.Resultado.setText(dB + " V");
        }
        catch(Exception e){
            this.Resultado.setText("El valor ingresado no es válido.");
        }
    }//GEN-LAST:event_CalcularActionPerformed

    private void BorrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BorrarActionPerformed
        this.num.setText("");
        this.Resultado.setText("");
    }//GEN-LAST:event_BorrarActionPerformed

    private void backActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_backActionPerformed
        MainPage2 open = new MainPage2();
        open.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_backActionPerformed

    /**
     * @param args the command line arguments
     */

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Borrar;
    private javax.swing.JButton Calcular;
    private javax.swing.JLabel Resultado;
    private javax.swing.JButton back;
    private javax.swing.JLabel ecuacion;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField num;
    // End of variables declaration//GEN-END:variables
}
