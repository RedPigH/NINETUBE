package com.project.ninetube.user.entity;

import lombok.*;
import org.hibernate.annotations.DynamicInsert;

import javax.persistence.*;
import java.util.Date;

@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
@Data
@DynamicInsert
@Table(name = "NUSER")
public class User {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public String OID;

    @Column
    public String ACCOUNT;

    @Column
    public String NAME;

    @Column
    public String PASSWORD;

    @Column
    public int DELSTATUS;

    @Column
    public int GENDER;

    @Column
    public String BIRTH;

    @Column
    public char LOGINTYPE;

    @Column
    public Date CREATEDATE;

    @Column
    public Date DELDATE;

    @Column
    public int ACCESSGRADE;

    @Column
    public String EMAIL;

    @Builder
    public User(String OID, String ACCOUNT, String NAME, String PASSWORD, int DELSTATUS, int GENDER, String BIRTH, char LOGINTYPE, Date CREATEDATE, Date DELDATE, int ACCESSGRADE, String EMAIL){
        this.OID = OID;
        this.ACCOUNT = ACCOUNT;
        this.NAME = NAME;
        this.PASSWORD = PASSWORD;
        this.DELSTATUS = DELSTATUS;
        this.GENDER = GENDER;
        this.BIRTH = BIRTH;
        this.LOGINTYPE = LOGINTYPE;
        this.CREATEDATE = CREATEDATE;
        this.DELDATE = DELDATE;
        this.ACCESSGRADE = ACCESSGRADE;
        this.EMAIL = EMAIL;
    }
}
