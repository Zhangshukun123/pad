.class public Lcom/ayma/commonerp/bean/SignIn;
.super Lorg/litepal/crud/LitePalSupport;
.source "SignIn.java"


# static fields
.field public static final SIGN_IN_NOT_OR_TAKE_OFF:Ljava/lang/String; = "0"

.field public static final SIGN_IN_YET:Ljava/lang/String; = "1"


# instance fields
.field private outDay:Ljava/lang/String;

.field private signInStatue:Ljava/lang/String;

.field private teamId:Ljava/lang/String;

.field private trainId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutDay()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SignIn;->outDay:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInStatue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SignIn;->signInStatue:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SignIn;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrainId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ayma/commonerp/bean/SignIn;->trainId:Ljava/lang/String;

    return-object v0
.end method

.method public setOutDay(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SignIn;->outDay:Ljava/lang/String;

    return-void
.end method

.method public setSignInStatue(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SignIn;->signInStatue:Ljava/lang/String;

    return-void
.end method

.method public setTeamId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SignIn;->teamId:Ljava/lang/String;

    return-void
.end method

.method public setTrainId(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/ayma/commonerp/bean/SignIn;->trainId:Ljava/lang/String;

    return-void
.end method
