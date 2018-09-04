/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controlador;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author adsi2
 */
@Entity
@Table(name = "Insumos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Insumos.findAll", query = "SELECT i FROM Insumos i"),
    @NamedQuery(name = "Insumos.findById", query = "SELECT i FROM Insumos i WHERE i.id = :id"),
    @NamedQuery(name = "Insumos.findByEncargadoinsumos", query = "SELECT i FROM Insumos i WHERE i.encargadoinsumos = :encargadoinsumos"),
    @NamedQuery(name = "Insumos.findByFecha", query = "SELECT i FROM Insumos i WHERE i.fecha = :fecha"),
    @NamedQuery(name = "Insumos.findByInsumo", query = "SELECT i FROM Insumos i WHERE i.insumo = :insumo"),
    @NamedQuery(name = "Insumos.findByCantidadentregada", query = "SELECT i FROM Insumos i WHERE i.cantidadentregada = :cantidadentregada"),
    @NamedQuery(name = "Insumos.findByEmpresa", query = "SELECT i FROM Insumos i WHERE i.empresa = :empresa"),
    @NamedQuery(name = "Insumos.findByRecibe", query = "SELECT i FROM Insumos i WHERE i.recibe = :recibe"),
    @NamedQuery(name = "Insumos.findByHabilitado", query = "SELECT i FROM Insumos i WHERE i.habilitado = :habilitado")})
public class Insumos implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Id")
    private Integer id;
    @Column(name = "Encargado_insumos")
    private String encargadoinsumos;
    @Column(name = "Fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Column(name = "Insumo")
    private String insumo;
    @Column(name = "Cantidad_entregada")
    private String cantidadentregada;
    @Column(name = "Empresa")
    private String empresa;
    @Column(name = "Recibe")
    private String recibe;
    @Column(name = "Habilitado")
    private Boolean habilitado;

    public Insumos() {
    }

    public Insumos(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEncargadoinsumos() {
        return encargadoinsumos;
    }

    public void setEncargadoinsumos(String encargadoinsumos) {
        this.encargadoinsumos = encargadoinsumos;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getInsumo() {
        return insumo;
    }

    public void setInsumo(String insumo) {
        this.insumo = insumo;
    }

    public String getCantidadentregada() {
        return cantidadentregada;
    }

    public void setCantidadentregada(String cantidadentregada) {
        this.cantidadentregada = cantidadentregada;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getRecibe() {
        return recibe;
    }

    public void setRecibe(String recibe) {
        this.recibe = recibe;
    }

    public Boolean getHabilitado() {
        return habilitado;
    }

    public void setHabilitado(Boolean habilitado) {
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
        if (!(object instanceof Insumos)) {
            return false;
        }
        Insumos other = (Insumos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controlador.Insumos[ id=" + id + " ]";
    }
    
}
