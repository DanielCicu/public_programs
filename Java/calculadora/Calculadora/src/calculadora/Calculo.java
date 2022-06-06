
package calculadora;

import java.awt.Toolkit;


public class Calculo extends javax.swing.JFrame {
    double variable,variable2,Resultado;
    
    public Calculo(double valor) {
        initComponents();
        this.setLocationRelativeTo(null);
        variable=valor;
        variable2=0;
        Resultado=0;
        jPanel2.setVisible(false);
        Valor_variable.setVisible(false);
        this.setLocationRelativeTo(null);
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/imagenes/Icon.PNG")));
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        grupo = new javax.swing.ButtonGroup();
        grupo2 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        Siguiente_Potencia = new javax.swing.JButton();
        volver = new javax.swing.JButton();
        Mensaje = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        Resultado_Watts = new javax.swing.JLabel();
        Resultado_label = new javax.swing.JLabel();
        Calcular = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        Watts = new javax.swing.JRadioButton();
        dBm = new javax.swing.JRadioButton();
        Valor_variable = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        Pin = new javax.swing.JRadioButton();
        Pout = new javax.swing.JRadioButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(241, 241, 241));
        setFocusCycleRoot(false);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setBackground(new java.awt.Color(233, 233, 233));
        jLabel1.setFont(new java.awt.Font("Constantia", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(233, 233, 233));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("¿Qué desea calcular?");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(60, 50, 197, 33));

        Siguiente_Potencia.setBackground(new java.awt.Color(233, 233, 233));
        Siguiente_Potencia.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        Siguiente_Potencia.setForeground(new java.awt.Color(65, 79, 91));
        Siguiente_Potencia.setText("Continuar");
        Siguiente_Potencia.setBorderPainted(false);
        Siguiente_Potencia.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Siguiente_Potencia.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Siguiente_PotenciaActionPerformed(evt);
            }
        });
        getContentPane().add(Siguiente_Potencia, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 130, -1, -1));

        volver.setBackground(new java.awt.Color(233, 233, 233));
        volver.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        volver.setForeground(new java.awt.Color(65, 79, 91));
        volver.setText("Volver");
        volver.setBorderPainted(false);
        volver.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                volverActionPerformed(evt);
            }
        });
        getContentPane().add(volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, -1));

        Mensaje.setFont(new java.awt.Font("Constantia", 1, 14)); // NOI18N
        Mensaje.setForeground(new java.awt.Color(233, 233, 233));
        Mensaje.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(Mensaje, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 180, 270, 30));

        jPanel3.setBackground(new java.awt.Color(25, 25, 25));
        jPanel3.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        Resultado_Watts.setFont(new java.awt.Font("Constantia", 1, 14)); // NOI18N
        Resultado_Watts.setForeground(new java.awt.Color(233, 233, 233));
        jPanel3.add(Resultado_Watts, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 410, 270, 30));

        Resultado_label.setFont(new java.awt.Font("Constantia", 1, 14)); // NOI18N
        Resultado_label.setForeground(new java.awt.Color(233, 233, 233));
        jPanel3.add(Resultado_label, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 370, 270, 30));

        Calcular.setBackground(new java.awt.Color(233, 233, 233));
        Calcular.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        Calcular.setForeground(new java.awt.Color(65, 79, 91));
        Calcular.setText("Calcular");
        Calcular.setToolTipText("");
        Calcular.setBorderPainted(false);
        Calcular.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Calcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                CalcularActionPerformed(evt);
            }
        });
        jPanel3.add(Calcular, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 320, -1, -1));

        jPanel2.setBackground(new java.awt.Color(25, 25, 25));

        grupo2.add(Watts);
        Watts.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        Watts.setForeground(new java.awt.Color(233, 233, 233));
        Watts.setText("Watts");
        Watts.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Watts.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                WattsActionPerformed(evt);
            }
        });

        grupo2.add(dBm);
        dBm.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        dBm.setForeground(new java.awt.Color(233, 233, 233));
        dBm.setText("dBm");
        dBm.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        dBm.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dBmActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addComponent(dBm)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 7, Short.MAX_VALUE)
                .addComponent(Watts))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(16, 16, 16)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(dBm)
                    .addComponent(Watts))
                .addContainerGap(16, Short.MAX_VALUE))
        );

        jPanel3.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 250, -1, 60));

        Valor_variable.setFont(new java.awt.Font("Consolas", 0, 14)); // NOI18N
        Valor_variable.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        Valor_variable.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Valor_variableActionPerformed(evt);
            }
        });
        jPanel3.add(Valor_variable, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 220, 100, 30));

        jPanel1.setBackground(new java.awt.Color(25, 25, 25));

        grupo.add(Pin);
        Pin.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        Pin.setForeground(new java.awt.Color(233, 233, 233));
        Pin.setText("Pin");
        Pin.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Pin.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                PinMouseClicked(evt);
            }
        });
        Pin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PinActionPerformed(evt);
            }
        });

        grupo.add(Pout);
        Pout.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        Pout.setForeground(new java.awt.Color(233, 233, 233));
        Pout.setText("Pout");
        Pout.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(Pin)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Pout)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Pin)
                    .addComponent(Pout))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel3.add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 80, -1, -1));

        getContentPane().add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 310, 460));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void WattsActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_WattsActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_WattsActionPerformed

    private void dBmActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dBmActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_dBmActionPerformed

    private void Valor_variableActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Valor_variableActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_Valor_variableActionPerformed

    private void PinActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PinActionPerformed
        
    }//GEN-LAST:event_PinActionPerformed

    private void PinMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_PinMouseClicked
     
    }//GEN-LAST:event_PinMouseClicked

    private void Siguiente_PotenciaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Siguiente_PotenciaActionPerformed
        Pin.setEnabled(false);
        Pout.setEnabled(false);
        jPanel2.setVisible(true);
        Valor_variable.setVisible(true);
        Siguiente_Potencia.setEnabled(false);
        if (Pin.isSelected()==true){
            Mensaje.setText("Digite el valor Pout");
        }
        else{
            Mensaje.setText("Digite el valor Pin");
        }
    }//GEN-LAST:event_Siguiente_PotenciaActionPerformed

    private void CalcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_CalcularActionPerformed
        try{
            variable2=Double.parseDouble(Valor_variable.getText());
            if(Pin.isSelected()==true){
                if (dBm.isSelected()==true){
                    Resultado=variable2-variable;  
                    Resultado_label.setText("Pin= "+Resultado+" dBm");
                    Resultado_Watts.setText("Pin= "+Math.pow(10,Resultado/10)+" W");
                }
                else{
                    if (Watts.isSelected()==true){
                        if(variable2>0){
                            variable2=10*Math.log10(variable2/(0.001));
                            Resultado=variable2-variable;
                            Resultado_label.setText("Pin= "+Resultado+" dBm");
                            Resultado_label.setText("Pin= "+Math.pow(10,Resultado/10)+" W");
                        }
                    }
                }
                Calcular.setEnabled(false);
                jPanel2.setVisible(false);
            }
            else{
                if (Pout.isSelected()==true){
                    if (dBm.isSelected()==true){
                    Resultado=variable2+variable;  
                     Resultado_label.setText("Pout= "+Resultado+" dBm");
                     Resultado_Watts.setText("Pout= "+Math.pow(10,Resultado/10)+" W");
                }
                else{
                    if (Watts.isSelected()==true){
                        if(variable2>0){
                            variable2=10*Math.log10(variable2/(0.001));
                            Resultado=variable2+variable;
                            Resultado_label.setText("Pout= "+Resultado+" dBm");
                            Resultado_Watts.setText("Pout= "+Math.pow(10,Resultado/10)+" W");
                        }
                    }
                }
                }  
                Calcular.setEnabled(false);
                jPanel2.setVisible(false);
            }
            
        }
        catch(Exception E){
            
        }
    }//GEN-LAST:event_CalcularActionPerformed

    private void volverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_volverActionPerformed
       bloques objeto =new bloques();
       objeto.setVisible(true);
       this.setVisible(false);
    }//GEN-LAST:event_volverActionPerformed

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Calcular;
    private javax.swing.JLabel Mensaje;
    private javax.swing.JRadioButton Pin;
    private javax.swing.JRadioButton Pout;
    private javax.swing.JLabel Resultado_Watts;
    private javax.swing.JLabel Resultado_label;
    private javax.swing.JButton Siguiente_Potencia;
    private javax.swing.JTextField Valor_variable;
    private javax.swing.JRadioButton Watts;
    private javax.swing.JRadioButton dBm;
    private javax.swing.ButtonGroup grupo;
    private javax.swing.ButtonGroup grupo2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JButton volver;
    // End of variables declaration//GEN-END:variables
}
