.class public Lcom/ayma/commonerp/bean/UserInfoBean;
.super Ljava/lang/Object;
.source "UserInfoBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;,
        Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;,
        Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;,
        Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;
    }
.end annotation


# instance fields
.field private birthDay:Ljava/lang/String;

.field private changeDay:Ljava/lang/String;

.field private company1:Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;

.field private company2:Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;

.field private company2Id:Ljava/lang/String;

.field private company2Name:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private createDate:J

.field private createUser:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private employeeCode:Ljava/lang/String;

.field private employeeId:Ljava/lang/String;

.field private employeeName:Ljava/lang/String;

.field private entryDay:Ljava/lang/String;

.field private flag1:Ljava/lang/String;

.field private flag2:Ljava/lang/String;

.field private flag3:Ljava/lang/String;

.field private flag4:Ljava/lang/String;

.field private flag5:Ljava/lang/String;

.field private fleet:Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;

.field private fleetId:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private grade:Ljava/lang/String;

.field private homeAddress:Ljava/lang/String;

.field private idCard:Ljava/lang/String;

.field private lastModifyDate:Ljava/lang/String;

.field private lastModifyUser:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private personnelType:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private qqid:Ljava/lang/String;

.field private quitDay:Ljava/lang/String;

.field private sortOrder:I

.field private starLevel:Ljava/lang/String;

.field private storeId:Ljava/lang/String;

.field private team:Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;

.field private teamId:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private validFlag:Ljava/lang/String;

.field private wechat:Ljava/lang/String;

.field private workAddress:Ljava/lang/String;

.field private workDay:Ljava/lang/String;

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthDay()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->birthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeDay()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->changeDay:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany1()Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company1:Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;

    return-object v0
.end method

.method public getCompany2()Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2:Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Name()Ljava/lang/String;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()J
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->createDate:J

    return-wide v0
.end method

.method public getCreateUser()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->createUser:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeCode()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeId()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmployeeName()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryDay()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->entryDay:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag1()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag1:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag2:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag3:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag4:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag5:Ljava/lang/String;

    return-object v0
.end method

.method public getFleet()Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->fleet:Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;

    return-object v0
.end method

.method public getFleetId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->fleetId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->grade:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeAddress()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->homeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIdCard()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->idCard:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyDate()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->lastModifyDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifyUser()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->lastModifyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonnelType()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->personnelType:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getQqid()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->qqid:Ljava/lang/String;

    return-object v0
.end method

.method public getQuitDay()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->quitDay:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->sortOrder:I

    return v0
.end method

.method public getStarLevel()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->starLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->storeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam()Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->team:Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getWechat()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->wechat:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkAddress()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkDay()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workDay:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkType()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workType:Ljava/lang/String;

    return-object v0
.end method

.method public setBirthDay(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->birthDay:Ljava/lang/String;

    return-void
.end method

.method public setChangeDay(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->changeDay:Ljava/lang/String;

    return-void
.end method

.method public setCompany1(Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company1:Lcom/ayma/commonerp/bean/UserInfoBean$Company1Bean;

    return-void
.end method

.method public setCompany2(Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2:Lcom/ayma/commonerp/bean/UserInfoBean$Company2Bean;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Name(Ljava/lang/String;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->company2Name:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setCreateDate(J)V
    .locals 0

    .line 334
    iput-wide p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->createDate:J

    return-void
.end method

.method public setCreateUser(Ljava/lang/String;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->createUser:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeCode(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeCode:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeId(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeId:Ljava/lang/String;

    return-void
.end method

.method public setEmployeeName(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->employeeName:Ljava/lang/String;

    return-void
.end method

.method public setEntryDay(Ljava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->entryDay:Ljava/lang/String;

    return-void
.end method

.method public setFlag1(Ljava/lang/String;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag1:Ljava/lang/String;

    return-void
.end method

.method public setFlag2(Ljava/lang/String;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag2:Ljava/lang/String;

    return-void
.end method

.method public setFlag3(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag3:Ljava/lang/String;

    return-void
.end method

.method public setFlag4(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag4:Ljava/lang/String;

    return-void
.end method

.method public setFlag5(Ljava/lang/String;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->flag5:Ljava/lang/String;

    return-void
.end method

.method public setFleet(Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->fleet:Lcom/ayma/commonerp/bean/UserInfoBean$FleetBean;

    return-void
.end method

.method public setFleetId(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->fleetId:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->gender:Ljava/lang/String;

    return-void
.end method

.method public setGrade(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->grade:Ljava/lang/String;

    return-void
.end method

.method public setHomeAddress(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->homeAddress:Ljava/lang/String;

    return-void
.end method

.method public setIdCard(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->idCard:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyDate(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->lastModifyDate:Ljava/lang/String;

    return-void
.end method

.method public setLastModifyUser(Ljava/lang/String;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->lastModifyUser:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setPersonnelType(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->personnelType:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->phone:Ljava/lang/String;

    return-void
.end method

.method public setQqid(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->qqid:Ljava/lang/String;

    return-void
.end method

.method public setQuitDay(Ljava/lang/String;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->quitDay:Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->sortOrder:I

    return-void
.end method

.method public setStarLevel(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->starLevel:Ljava/lang/String;

    return-void
.end method

.method public setStoreId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->storeId:Ljava/lang/String;

    return-void
.end method

.method public setTeam(Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->team:Lcom/ayma/commonerp/bean/UserInfoBean$TeamBean;

    return-void
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->teamId:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->username:Ljava/lang/String;

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->validFlag:Ljava/lang/String;

    return-void
.end method

.method public setWechat(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->wechat:Ljava/lang/String;

    return-void
.end method

.method public setWorkAddress(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workAddress:Ljava/lang/String;

    return-void
.end method

.method public setWorkDay(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workDay:Ljava/lang/String;

    return-void
.end method

.method public setWorkType(Ljava/lang/String;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/ayma/commonerp/bean/UserInfoBean;->workType:Ljava/lang/String;

    return-void
.end method
