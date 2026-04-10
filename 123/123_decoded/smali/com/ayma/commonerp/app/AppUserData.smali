.class public Lcom/ayma/commonerp/app/AppUserData;
.super Ljava/lang/Object;
.source "AppUserData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ayma/commonerp/app/AppUserData$QCInfo;
    }
.end annotation


# static fields
.field public static TOKEN:Ljava/lang/String; = null

.field public static company2Code:Ljava/lang/String; = null

.field public static company2Id:Ljava/lang/String; = ""

.field public static company2Name:Ljava/lang/String; = ""

.field public static companyId:Ljava/lang/String; = ""

.field public static companyName:Ljava/lang/String; = ""

.field public static fleetId:Ljava/lang/String; = ""

.field public static goRideDate:Ljava/lang/String; = ""

.field public static personnelType:Ljava/lang/String; = ""

.field public static shopTrainDay:Ljava/lang/String; = ""

.field public static shopTrainId:Ljava/lang/String; = ""

.field public static shopTrainName:Ljava/lang/String; = ""

.field public static storeId:Ljava/lang/String; = ""

.field public static teamId:Ljava/lang/String; = ""

.field public static teamName:Ljava/lang/String; = ""

.field public static trainId:Ljava/lang/String; = ""

.field public static trainName:Ljava/lang/String; = ""

.field public static userCode:Ljava/lang/String; = ""

.field public static userId:Ljava/lang/String; = ""

.field public static userName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll()V
    .locals 1

    const-string v0, "Bearer "

    .line 102
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    const-string v0, ""

    .line 103
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userId:Ljava/lang/String;

    .line 104
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userCode:Ljava/lang/String;

    .line 105
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->userName:Ljava/lang/String;

    .line 106
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->fleetId:Ljava/lang/String;

    .line 107
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Id:Ljava/lang/String;

    .line 108
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->company2Name:Ljava/lang/String;

    .line 109
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyId:Ljava/lang/String;

    .line 110
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->companyName:Ljava/lang/String;

    .line 111
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamId:Ljava/lang/String;

    .line 112
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->teamName:Ljava/lang/String;

    .line 113
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainId:Ljava/lang/String;

    .line 114
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->trainName:Ljava/lang/String;

    .line 115
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->storeId:Ljava/lang/String;

    .line 116
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->goRideDate:Ljava/lang/String;

    .line 117
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->personnelType:Ljava/lang/String;

    .line 118
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->shopTrainId:Ljava/lang/String;

    .line 119
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->shopTrainName:Ljava/lang/String;

    .line 120
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData;->shopTrainDay:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->company2Id:Ljava/lang/String;

    .line 123
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->teamName:Ljava/lang/String;

    .line 124
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->companyId:Ljava/lang/String;

    .line 125
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->teamId:Ljava/lang/String;

    .line 126
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userName:Ljava/lang/String;

    .line 127
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userCode:Ljava/lang/String;

    .line 128
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->userId:Ljava/lang/String;

    .line 129
    sput-object v0, Lcom/ayma/commonerp/app/AppUserData$QCInfo;->storeId:Ljava/lang/String;

    return-void
.end method

.method public static isDefaultToken()Z
    .locals 2

    .line 133
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->TOKEN:Ljava/lang/String;

    const-string v1, "Bearer "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKuGuan()Z
    .locals 2

    .line 83
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->personnelType:Ljava/lang/String;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isQC()Z
    .locals 2

    .line 87
    sget-object v0, Lcom/ayma/commonerp/app/AppUserData;->personnelType:Ljava/lang/String;

    const-string v1, "J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
