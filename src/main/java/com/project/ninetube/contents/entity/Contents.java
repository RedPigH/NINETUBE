package com.project.ninetube.contents.entity;

import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;
import java.util.Date;


@Entity
@DynamicInsert
@Table(name = "NVIDEO_V")
public class Contents {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private String OID;

    public Contents(){}

    public Contents(String OID, String VFILENAME, int NVIDEO_SIZE, String CREATOR, Date CREATEDAT, int VIECNT, int GOODCNT, int BADCNT, String RUNNINGTIME, String NVIDEO_DESCRIPTION, int DELSTATUS, Date DELDATE, Date UPDATEDATE, String CATEGORYOID, String NVIDEO_TAG) {
        this.OID = OID;
        this.VFILENAME = VFILENAME;
        this.NVIDEO_SIZE = NVIDEO_SIZE;
        this.CREATOR = CREATOR;
        this.CREATEDAT = CREATEDAT;
        this.VIECNT = VIECNT;
        this.GOODCNT = GOODCNT;
        this.BADCNT = BADCNT;
        this.RUNNINGTIME = RUNNINGTIME;
        this.NVIDEO_DESCRIPTION = NVIDEO_DESCRIPTION;
        this.DELSTATUS = DELSTATUS;
        this.DELDATE = DELDATE;
        this.UPDATEDATE = UPDATEDATE;
        this.CATEGORYOID = CATEGORYOID;
        this.NVIDEO_TAG = NVIDEO_TAG;
    }



    @Column
    private String VFILENAME;
    @Column
    private int NVIDEO_SIZE;
    @Column
    private String CREATOR;
    @Column
    private Date CREATEDAT;
    @Column
    private int VIECNT;
    @Column
    private int GOODCNT;
    @Column
    private int BADCNT;
    @Column
    private String RUNNINGTIME;
    @Column
    private String NVIDEO_DESCRIPTION;
    @Column
    private int DELSTATUS;
    @Column
    private Date DELDATE;
    @Column
    private Date UPDATEDATE;
    @Column
    private String CATEGORYOID;
    @Column
    private String NVIDEO_TAG;


    public String getOID() {
        return OID;
    }

    public void setOID(String OID) {
        this.OID = OID;
    }

    public String getVFILENAME() {
        return VFILENAME;
    }

    public void setVFILENAME(String VFILENAME) {
        this.VFILENAME = VFILENAME;
    }

    public int getNVIDEO_SIZE() {
        return NVIDEO_SIZE;
    }

    public void setNVIDEO_SIZE(int NVIDEO_SIZE) {
        this.NVIDEO_SIZE = NVIDEO_SIZE;
    }

    public String getCREATOR() {
        return CREATOR;
    }

    public void setCREATOR(String CREATOR) {
        this.CREATOR = CREATOR;
    }

    public Date getCREATEDAT() {
        return CREATEDAT;
    }

    public void setCREATEDAT(Date CREATDAT) {
        this.CREATEDAT = CREATDAT;
    }

    public int getVIECNT() {
        return VIECNT;
    }

    public void setVIECNT(int VIECNT) {
        this.VIECNT = VIECNT;
    }

    public int getGOODCNT() {
        return GOODCNT;
    }

    public void setGOODCNT(int GOODCNT) {
        this.GOODCNT = GOODCNT;
    }

    public int getBADCNT() {
        return BADCNT;
    }

    public void setBADCNT(int BADCNT) {
        this.BADCNT = BADCNT;
    }

    public String getRUNNINGTIME() {
        return RUNNINGTIME;
    }

    public void setRUNNINGTIME(String RUNNINGTIME) {
        this.RUNNINGTIME = RUNNINGTIME;
    }

    public String getNVIDEO_DESCRIPTION() {
        return NVIDEO_DESCRIPTION;
    }

    public void setNVIDEO_DESCRIPTION(String NVIDEO_DESCRIPTION) {
        this.NVIDEO_DESCRIPTION = NVIDEO_DESCRIPTION;
    }

    public int getDELSTATUS() {
        return DELSTATUS;
    }

    public void setDELSTATUS(int DELSTATUS) {
        this.DELSTATUS = DELSTATUS;
    }

    public Date getDELDATE() {
        return DELDATE;
    }

    public void setDELDATE(Date DELDATE) {
        this.DELDATE = DELDATE;
    }

    public Date getUPDATEDATE() {
        return UPDATEDATE;
    }

    public void setUPDATEDATE(Date UPDATEDATE) {
        this.UPDATEDATE = UPDATEDATE;
    }

    public String getCATEGORYOID() {
        return CATEGORYOID;
    }

    public void setCATEGORYOID(String CATEGORYOID) {
        this.CATEGORYOID = CATEGORYOID;
    }

    public String getNVIDEO_TAG() {
        return NVIDEO_TAG;
    }

    public void setNVIDEO_TAG(String NVIDEO_TAG) {
        this.NVIDEO_TAG = NVIDEO_TAG;
    }




}
