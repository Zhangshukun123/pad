.class public Lcom/vondear/rxtool/service/RxServiceLocation;
.super Landroid/app/Service;
.source "RxServiceLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;,
        Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;
    }
.end annotation


# instance fields
.field private country:Ljava/lang/String;

.field private isSuccess:Z

.field private lastLatitude:Ljava/lang/String;

.field private lastLongitude:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private locality:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private mOnGetLocationListener:Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

.field private mOnLocationChangeListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "loading..."

    .line 21
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLatitude:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLongitude:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->latitude:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->longitude:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->country:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->locality:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->street:Ljava/lang/String;

    .line 29
    new-instance v0, Lcom/vondear/rxtool/service/RxServiceLocation$1;

    invoke-direct {v0, p0}, Lcom/vondear/rxtool/service/RxServiceLocation$1;-><init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V

    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->mOnLocationChangeListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLatitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLatitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLongitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->lastLongitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->mOnGetLocationListener:Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->latitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->latitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->longitude:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->longitude:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->country:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->locality:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->locality:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vondear/rxtool/service/RxServiceLocation;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->street:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/vondear/rxtool/service/RxServiceLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->street:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vondear/rxtool/service/RxServiceLocation;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->isSuccess:Z

    return p0
.end method

.method static synthetic access$802(Lcom/vondear/rxtool/service/RxServiceLocation;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->isSuccess:Z

    return p1
.end method

.method static synthetic access$900(Lcom/vondear/rxtool/service/RxServiceLocation;)Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->mOnLocationChangeListener:Lcom/vondear/rxtool/RxLocationTool$OnLocationChangeListener;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 81
    new-instance p1, Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;

    invoke-direct {p1, p0}, Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;-><init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vondear/rxtool/service/RxServiceLocation$2;

    invoke-direct {v1, p0}, Lcom/vondear/rxtool/service/RxServiceLocation$2;-><init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 86
    invoke-static {}, Lcom/vondear/rxtool/RxLocationTool;->unRegisterLocation()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->mOnGetLocationListener:Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public setOnGetLocationListener(Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation;->mOnGetLocationListener:Lcom/vondear/rxtool/service/RxServiceLocation$OnGetLocationListener;

    return-void
.end method
