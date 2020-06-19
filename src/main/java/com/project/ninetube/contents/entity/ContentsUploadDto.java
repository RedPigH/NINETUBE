package com.project.ninetube.contents.entity;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;


@Entity
@DynamicInsert
@Table(name = "NVIDEO_V")
public class ContentsUploadDto {
    @Id
    @GeneratedValue(generator = "uuid")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    private String OID;

    public ContentsUploadDto(){}

    public ContentsUploadDto(String OID, String VFILENAME, int NVIDEO_SIZE, String CREATOR, Date CREATEDATE, int VIEWCNT, int GOODCNT, int BADCNT, String RUNNINGTIME, String NVIDEO_DESCRIPTION, int DELSTATUS, Date DELDATE, Date UPDATEDATE, String CATEGORYOID, String NVIDEO_TAG) {
        this.OID = OID;
        this.VFILENAME = VFILENAME;
        this.CREATOR = CREATOR;
        this.NVIDEO_DESCRIPTION = NVIDEO_DESCRIPTION;
        this.CATEGORYOID = CATEGORYOID;
    }

    @Column
    private String VFILENAME;//
    @Column
    private String CREATOR;//
    @Column
    private String NVIDEO_DESCRIPTION;//
    @Column
    private String CATEGORYOID;//


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

    public String getCREATOR() {
        return CREATOR;
    }

    public void setCREATOR(String CREATOR) {
        this.CREATOR = CREATOR;
    }

    public String getNVIDEO_DESCRIPTION() {
        return NVIDEO_DESCRIPTION;
    }

    public void setNVIDEO_DESCRIPTION(String NVIDEO_DESCRIPTION) {
        this.NVIDEO_DESCRIPTION = NVIDEO_DESCRIPTION;
    }

    public String getCATEGORYOID() {
        return CATEGORYOID;
    }

    public void setCATEGORYOID(String CATEGORYOID) {
        this.CATEGORYOID = CATEGORYOID;
    }

    public Contents toEntity(){
        return Contents.builder()
                .VFILENAME(VFILENAME)
                .CREATOR(CREATOR)
                .NVIDEO_DESCRIPTION(NVIDEO_DESCRIPTION)
                .OID(OID)
                .CATEGORYOID(CATEGORYOID)
                .build();
    }

}
