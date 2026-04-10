.class public Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;
.super Landroid/os/Binder;
.source "RxServiceLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vondear/rxtool/service/RxServiceLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxtool/service/RxServiceLocation;


# direct methods
.method public constructor <init>(Lcom/vondear/rxtool/service/RxServiceLocation;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/vondear/rxtool/service/RxServiceLocation;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/vondear/rxtool/service/RxServiceLocation$LocationBinder;->this$0:Lcom/vondear/rxtool/service/RxServiceLocation;

    return-object v0
.end method
