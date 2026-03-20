package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.IdName;
import org.javalite.activejdbc.annotations.Table;

@Table("subjects")
@IdName("id")
public class Subject extends Model {

    public Integer getID() {
        return getInteger("id");
    }

    public String getName() {
        return getString("name");
    }

    public Integer getResponsibleId() {
        return getInteger("responsible_id");
    }

    public void setResponsibleId(Integer teacherId) {
        set("responsible_id", teacherId);
    }

}