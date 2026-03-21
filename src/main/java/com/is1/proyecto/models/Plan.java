package com.is1.proyecto.models;

import org.javalite.activejdbc.Model;
import org.javalite.activejdbc.annotations.Table;
import org.javalite.activejdbc.annotations.BelongsTo;

@Table("plans")
@BelongsTo(parent = Career.class, foreignKeyName = "career_id")
public class Plan extends Model {
    public String getDisplayString(){
        Career c = parent(Career.class);
        String careerName = (c != null) ? c.getString("name"):"Carrera desconocida";
        return careerName + " (Versión " + getString("version") + ")";
    }
}