package com.project.ninetube.contents.entity;

import jdk.nashorn.internal.objects.annotations.Getter;
import lombok.Builder;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;
import java.util.Date;

@Entity
@DynamicInsert
@Table(name = "NVIDEO_V")
public class Contents {
    @Id
    @Column
    private String OID;

    public Contents(){}
    @Builder
    public Contents(String OID, String VFILENAME, Integer NVIDEO_SIZE, String CREATOR, Date CREATEDATE, Integer VIEWCNT, Integer GOODCNT, Integer BADCNT, String RUNNINGTIME, String NVIDEO_DESCRIPTION, Integer DELSTATUS, Date DELDATE, Date UPDATEDATE, String CATEGORYOID, String NVIDEO_TAG) {
        this.OID = OID;
        this.VFILENAME = VFILENAME;
        this.NVIDEO_SIZE = NVIDEO_SIZE;
        this.CREATOR = CREATOR;
        this.CREATEDATE = CREATEDATE;
        this.VIEWCNT = VIEWCNT;
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
    private String VFILENAME;//
    @Column
    private Integer NVIDEO_SIZE;//
    @Column
    private String CREATOR;//
    @Column
    private Date CREATEDATE;//
    @Column
    private Integer VIEWCNT;//
    @Column
    private Integer GOODCNT;//
    @Column
    private Integer BADCNT;//
    @Column
    private String RUNNINGTIME;//
    @Column
    private String NVIDEO_DESCRIPTION;//
    @Column
    private Integer DELSTATUS;//
    @Column
    private Date DELDATE;//
    @Column
    private Date UPDATEDATE;//
    @Column
    private String CATEGORYOID;//
    @Column
    private String NVIDEO_TAG;//


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

    public Integer getNVIDEO_SIZE() {
        return NVIDEO_SIZE;
    }

    public void setNVIDEO_SIZE(Integer NVIDEO_SIZE) {
        this.NVIDEO_SIZE = NVIDEO_SIZE;
    }

    public String getCREATOR() {
        return CREATOR;
    }

    public void setCREATOR(String CREATOR) {
        this.CREATOR = CREATOR;
    }

    public Date getCREATEDATE() {
        return CREATEDATE;
    }

    public void setCREATEDATE(Date CREATEDATE) {
        this.CREATEDATE = CREATEDATE;
    }

    public Integer getVIEWCNT() {
        return VIEWCNT;
    }

    public void setVIEWCNT(Integer VIECNT) {
        this.VIEWCNT = VIECNT;
    }

    public Integer getGOODCNT() {
        return GOODCNT;
    }

    public void setGOODCNT(Integer GOODCNT) {
        this.GOODCNT = GOODCNT;
    }

    public Integer getBADCNT() {
        return BADCNT;
    }

    public void setBADCNT(Integer BADCNT) {
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

    public Integer getDELSTATUS() {
        return DELSTATUS;
    }

    public void setDELSTATUS(Integer DELSTATUS) {
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
