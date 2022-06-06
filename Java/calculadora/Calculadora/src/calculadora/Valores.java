/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package calculadora;

import java.awt.Toolkit;

public class Valores extends javax.swing.JFrame {
    int i,x,j,y;
    double [] valoresGanancia,valoresPerdidas;
    int[] Ganancias,Perdidas;
    int valormax1,valormax2;
    double Gan,Ate,Resultado;
    
    public Valores(int variable,int variable2) {
        initComponents();
        this.setLocationRelativeTo(null);
        valoresGanancia=new double[variable];
        valoresPerdidas=new double[variable2];
        Ganancias= new int[variable];
        Perdidas = new int[variable2];
        i=0;
        j=0;
        y=1;
        x=1;
        Gan=0;
        Ate=0;
        valormax1=variable;
        valormax2=variable2;
        sig.enable(false);
        sig.setVisible(false);
        funcion_mensaje(variable,variable2);
        setIconImage(Toolkit.getDefaultToolkit().getImage(getClass().getResource("/imagenes/Icon.PNG")));
    }
    public void funcion_mensaje(int n,int m){
        if(n>0){comentario.setText("Digite el valor del amplificador 1");
            
        }
        else{
            if(m>0){
                comentario.setText("Digite el valor del atenuador 1");
            }
            else{
                comentario.setText("No hay componentes");
            }
        }
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        grupo = new javax.swing.ButtonGroup();
        comentario = new javax.swing.JLabel();
        valores = new javax.swing.JTextField();
        Add_val = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        dB = new javax.swing.JRadioButton();
        Veces = new javax.swing.JRadioButton();
        sig = new javax.swing.JButton();
        volver = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        advertencia = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        comentario.setFont(new java.awt.Font("Constantia", 1, 12)); // NOI18N
        comentario.setForeground(new java.awt.Color(233, 233, 233));
        comentario.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        getContentPane().add(comentario, new org.netbeans.lib.awtextra.AbsoluteConstraints(102, 14, 219, 40));

        valores.setBackground(new java.awt.Color(233, 233, 233));
        valores.setFont(new java.awt.Font("Consolas", 0, 14)); // NOI18N
        valores.setForeground(new java.awt.Color(65, 79, 91));
        valores.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                valoresActionPerformed(evt);
            }
        });
        getContentPane().add(valores, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 66, 99, 30));

        Add_val.setBackground(new java.awt.Color(233, 233, 233));
        Add_val.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        Add_val.setForeground(new java.awt.Color(65, 79, 91));
        Add_val.setText("Añadir");
        Add_val.setBorderPainted(false);
        Add_val.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Add_val.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Add_valActionPerformed(evt);
            }
        });
        getContentPane().add(Add_val, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 60, -1, -1));

        jPanel1.setBackground(new java.awt.Color(25, 25, 25));

        grupo.add(dB);
        dB.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        dB.setForeground(new java.awt.Color(233, 233, 233));
        dB.setText("dB");
        dB.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        dB.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                dBMouseClicked(evt);
            }
        });

        grupo.add(Veces);
        Veces.setFont(new java.awt.Font("Consolas", 1, 12)); // NOI18N
        Veces.setForeground(new java.awt.Color(233, 233, 233));
        Veces.setText("Veces");
        Veces.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Veces.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                VecesMouseClicked(evt);
            }
        });
        Veces.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                VecesActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(dB)
                    .addComponent(Veces))
                .addContainerGap(17, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(dB)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(Veces)
                .addContainerGap(32, Short.MAX_VALUE))
        );

        getContentPane().add(jPanel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(100, 110, -1, -1));

        sig.setBackground(new java.awt.Color(233, 233, 233));
        sig.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        sig.setForeground(new java.awt.Color(65, 79, 91));
        sig.setText("Siguiente");
        sig.setBorderPainted(false);
        sig.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        sig.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sigActionPerformed(evt);
            }
        });
        getContentPane().add(sig, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 150, -1, -1));

        volver.setBackground(new java.awt.Color(233, 233, 233));
        volver.setFont(new java.awt.Font("Consolas", 0, 18)); // NOI18N
        volver.setForeground(new java.awt.Color(65, 79, 91));
        volver.setText("volver");
        volver.setBorderPainted(false);
        volver.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                volverActionPerformed(evt);
            }
        });
        getContentPane().add(volver, new org.netbeans.lib.awtextra.AbsoluteConstraints(6, 6, -1, -1));

        jPanel2.setBackground(new java.awt.Color(25, 25, 25));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        advertencia.setForeground(new java.awt.Color(233, 233, 233));
        jPanel2.add(advertencia, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 190, 239, 32));

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 340, 240));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void valoresActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_valoresActionPerformed
        
    }//GEN-LAST:event_valoresActionPerformed

    private void Add_valActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Add_valActionPerformed
        if (dB.isSelected()==false && Veces.isSelected()==false){
            advertencia.setText("Tiene que elegir una unidad");
        }
        else{
             advertencia.setText("");
            try{
                if (i<=(valormax1-1) && valormax1>0){

                    valoresGanancia[i]=Double.parseDouble(valores.getText());
                    i++;
                    if (x<valormax1){
                        x++;
                        comentario.setText("Digite el valor del amplificador "+(x));
                    }
                    else{
                        if (valormax2>0){
                            comentario.setText("Digite el valor del atenuador "+(y));
                        }
                    }
                    valores.setText("");
                }
                else{
                    if (j<=(valormax2-1) && valormax2>0){
                        valoresPerdidas[j]=Double.parseDouble(valores.getText());
                        j++;
                        if (y<valormax2){
                            y++;
                            comentario.setText("Digite el valor del atenuador "+(y));
                        }
                        valores.setText("");
                    }
                }
                if (i==valormax1 && j==valormax2){
                    comentario.setText("");
                    for (int i=0;i<valormax1;i++){
                        if(Ganancias[i]==2 && valoresGanancia[i]>0){
                            valoresGanancia[i]= 10*Math.log10(valoresGanancia[i]);
                        }
                        Gan = Gan + valoresGanancia[i];
                    }
                    for (int i=0;i<valormax2;i++){
                        if(Perdidas[i]==2 && valoresPerdidas[i]>0){
                            valoresPerdidas[i]= 10*Math.log10(valoresPerdidas[i]);
                        }
                        Ate = Ate + valoresPerdidas[i];
                    }
                    Resultado=Gan-Ate;
                    sig.setVisible(true);
                    valores.setEditable(false);
                    dB.setEnabled(false);
                    Veces.setEnabled(false);
                    sig.enable(true);
                    Add_val.setVisible(false);
                    Add_val.enable(false);
                }
            }
            catch(Exception E){
                System.out.println("Se ingreso algo mal");
            }
        }
        grupo.clearSelection();
    }//GEN-LAST:event_Add_valActionPerformed

    private void VecesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_VecesActionPerformed
       
    }//GEN-LAST:event_VecesActionPerformed

    private void dBMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_dBMouseClicked
       if (i<=(valormax1-1)){
             Ganancias[i]=1;
       }
       else{
           if(j<=(valormax2-1)){
               Perdidas[j]=1;
           }
       }
    }//GEN-LAST:event_dBMouseClicked

    private void VecesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_VecesMouseClicked
        if (i<=(valormax1-1)){
             Ganancias[i]=2;
        }
        else{
           if(j<=(valormax2-1)){
               Perdidas[j]=2;
           }
       }
    }//GEN-LAST:event_VecesMouseClicked

    private void sigActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sigActionPerformed

        Calculo objeto = new Calculo(Resultado);
        objeto.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_sigActionPerformed

    private void volverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_volverActionPerformed
        bloques objeto = new bloques();
        objeto.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_volverActionPerformed

    /**
     * @param args the command line arguments
     */


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Add_val;
    private javax.swing.JRadioButton Veces;
    private javax.swing.JLabel advertencia;
    private javax.swing.JLabel comentario;
    private javax.swing.JRadioButton dB;
    private javax.swing.ButtonGroup grupo;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton sig;
    private javax.swing.JTextField valores;
    private javax.swing.JButton volver;
    // End of variables declaration//GEN-END:variables
}
