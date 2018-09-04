/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author adsi2
 */
@Entity
@Table(name = "Panes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Panes.findAll", query = "SELECT p FROM Panes p"),
    @NamedQuery(name = "Panes.findById", query = "SELECT p FROM Panes p WHERE p.id = :id"),
    @NamedQuery(name = "Panes.findByNombre", query = "SELECT p FROM Panes p WHERE p.nombre = :nombre"),
    @NamedQuery(name = "Panes.findByPeso", query = "SELECT p FROM Panes p WHERE p.peso = :peso"),
    @NamedQuery(name = "Panes.findByCategoria", query = "SELECT p FROM Panes p WHERE p.categoria = :categoria"),
    @NamedQuery(name = "Panes.findByImagen", query = "SELECT p FROM Panes p WHERE p.imagen = :imagen"),
    @NamedQuery(name = "Panes.findByCantidadPorciones", query = "SELECT p FROM Panes p WHERE p.cantidadPorciones = :cantidadPorciones"),
    @NamedQuery(name = "Panes.findByHabilitado", query = "SELECT p FROM Panes p WHERE p.habilitado = :habilitado")})
public class Panes implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "Id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "Nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "Peso")
    private String peso;
    @Basic(optional = false)
    @Column(name = "Categoria")
    private String categoria;
    @Basic(optional = false)
    @Column(name = "Imagen")
    private String imagen;
    @Basic(optional = false)
    @Column(name = "Cantidad_Porciones")
    private String cantidadPorciones;
    @Basic(optional = false)
    @Column(name = "Habilitado")
    private boolean habilitado;

    public Panes() {
    }

    public Panes(Integer id) {
        this.id = id;
    }

    public Panes(Integer id, String nombre, String peso, String categoria, String imagen, String cantidadPorciones, boolean habilitado) {
        this.id = id;
        this.nombre = nombre;
        this.peso = peso;
        this.categoria = categoria;
        this.imagen = imagen;
        this.cantidadPorciones = cantidadPorciones;
        this.habilitado = habilitado;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getCantidadPorciones() {
        return cantidadPorciones;
    }

    public void setCantidadPorciones(String cantidadPorciones) {
        this.cantidadPorciones = cantidadPorciones;
    }

    public boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(boolean habilitado) {
        this.habilitado = habilitado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Panes)) {
            return false;
        }
        Panes other = (Panes) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controlador.Panes[ id=" + id + " ]";
    }
    
}
