.class public Lcom/ayma/commonerp/bean/TrainMemberBean;
.super Ljava/lang/Object;
.source "TrainMemberBean.java"


# instance fields
.field private employeeName:Ljava/lang/String;

.field private endFlag:Ljava/lang/String;

.field private outDay:Ljava/lang/String;

.field private trainName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmployeeName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->employeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getEndFlag()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->endFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->trainName:Ljava/lang/String;

    return-object v0
.end method

.method public isSignOut()Z
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->endFlag:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setEmployeeName(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->employeeName:Ljava/lang/String;

    return-void
.end method

.method public setEndFlag(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->endFlag:Ljava/lang/String;

    return-void
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setTrainName(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/ayma/commonerp/bean/TrainMemberBean;->trainName:Ljava/lang/String;

    return-void
.end method
