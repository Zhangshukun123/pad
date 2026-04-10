.class public Lcom/ayma/commonerp/bean/PdaPermissionBean;
.super Lorg/litepal/crud/LitePalSupport;
.source "PdaPermissionBean.java"


# static fields
.field public static final BTN_LEVEL_1:Ljava/lang/String; = "1"

.field public static final BTN_LEVEL_2:Ljava/lang/String; = "2"

.field public static final BTN_LEVEL_3:Ljava/lang/String; = "3"


# instance fields
.field private buttonCode:Ljava/lang/String;

.field private buttonName:Ljava/lang/String;

.field private buttonValueCode:Ljava/lang/String;

.field private buttonValueName:Ljava/lang/String;

.field private company2Id:Ljava/lang/String;

.field private company2Name:Ljava/lang/String;

.field private companyId:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private flag1:Ljava/lang/Object;

.field private flag10:Ljava/lang/Object;

.field private flag2:Ljava/lang/Object;

.field private flag3:Ljava/lang/Object;

.field private flag4:Ljava/lang/Object;

.field private flag5:Ljava/lang/Object;

.field private flag6:Ljava/lang/Object;

.field private flag7:Ljava/lang/Object;

.field private flag8:Ljava/lang/Object;

.field private flag9:Ljava/lang/Object;

.field private isShow:Ljava/lang/String;

.field private level:I

.field private menuCode:Ljava/lang/String;

.field private menuName:Ljava/lang/String;

.field private sortCode:I

.field private validFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->isShow:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getButtonCode()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonName:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonValueCode()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonValueCode:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonValueName()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonValueName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Id()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->company2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany2Name()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->company2Name:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->companyId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag1()Ljava/lang/Object;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag1:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag10()Ljava/lang/Object;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag10:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag2()Ljava/lang/Object;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag2:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag3()Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag3:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag4()Ljava/lang/Object;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag4:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag5()Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag5:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag6()Ljava/lang/Object;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag6:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag7()Ljava/lang/Object;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag7:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag8()Ljava/lang/Object;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag8:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlag9()Ljava/lang/Object;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag9:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsShow()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->isShow:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->level:I

    return v0
.end method

.method public getMenuCode()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->menuCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->menuName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortCode()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->sortCode:I

    return v0
.end method

.method public getValidFlag()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->validFlag:Ljava/lang/String;

    return-object v0
.end method

.method public setButtonCode(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonCode:Ljava/lang/String;

    return-void
.end method

.method public setButtonName(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonName:Ljava/lang/String;

    return-void
.end method

.method public setButtonValueCode(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonValueCode:Ljava/lang/String;

    return-void
.end method

.method public setButtonValueName(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->buttonValueName:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Id(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->company2Id:Ljava/lang/String;

    return-void
.end method

.method public setCompany2Name(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->company2Name:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->companyId:Ljava/lang/String;

    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->companyName:Ljava/lang/String;

    return-void
.end method

.method public setFlag1(Ljava/lang/Object;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag1:Ljava/lang/Object;

    return-void
.end method

.method public setFlag10(Ljava/lang/Object;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag10:Ljava/lang/Object;

    return-void
.end method

.method public setFlag2(Ljava/lang/Object;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag2:Ljava/lang/Object;

    return-void
.end method

.method public setFlag3(Ljava/lang/Object;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag3:Ljava/lang/Object;

    return-void
.end method

.method public setFlag4(Ljava/lang/Object;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag4:Ljava/lang/Object;

    return-void
.end method

.method public setFlag5(Ljava/lang/Object;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag5:Ljava/lang/Object;

    return-void
.end method

.method public setFlag6(Ljava/lang/Object;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag6:Ljava/lang/Object;

    return-void
.end method

.method public setFlag7(Ljava/lang/Object;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag7:Ljava/lang/Object;

    return-void
.end method

.method public setFlag8(Ljava/lang/Object;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag8:Ljava/lang/Object;

    return-void
.end method

.method public setFlag9(Ljava/lang/Object;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->flag9:Ljava/lang/Object;

    return-void
.end method

.method public setIsShow(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->isShow:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->level:I

    return-void
.end method

.method public setMenuCode(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->menuCode:Ljava/lang/String;

    return-void
.end method

.method public setMenuName(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->menuName:Ljava/lang/String;

    return-void
.end method

.method public setSortCode(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->sortCode:I

    return-void
.end method

.method public setValidFlag(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/ayma/commonerp/bean/PdaPermissionBean;->validFlag:Ljava/lang/String;

    return-void
.end method
