/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.bodyhealth.domain;

import java.util.Date;
import java.util.List;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

/**
 *
 * @author estudiante
 */
public class Detalle {
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long documento;
    
    @NotEmpty
    private String tipoDocumento;
    
    @NotEmpty
    private String nombre;

    @NotEmpty
    private String apellido;

    @NotEmpty
    private String telefono;

    @NotEmpty
    private Date fechaNacimiento;

    @NotEmpty
    @Email
    private String email;

    @NotEmpty
    private String password;

    @NotEmpty
    private String foto;

    @NotEmpty
    private String jornada;

    @OneToMany
    @JoinColumn(name="id_datos")
    private List<Datos> idDatos;

    @OneToMany
    @JoinColumn(name="id_detalle_plan")
    private List<Detalle> idDetallePlan;
}
