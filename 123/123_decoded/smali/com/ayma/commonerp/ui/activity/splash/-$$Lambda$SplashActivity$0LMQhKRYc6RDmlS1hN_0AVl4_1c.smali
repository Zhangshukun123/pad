.class public final synthetic Lcom/ayma/commonerp/ui/activity/splash/-$$Lambda$SplashActivity$0LMQhKRYc6RDmlS1hN_0AVl4_1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/splash/SplashActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/splash/SplashActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/splash/-$$Lambda$SplashActivity$0LMQhKRYc6RDmlS1hN_0AVl4_1c;->f$0:Lcom/ayma/commonerp/ui/activity/splash/SplashActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/splash/-$$Lambda$SplashActivity$0LMQhKRYc6RDmlS1hN_0AVl4_1c;->f$0:Lcom/ayma/commonerp/ui/activity/splash/SplashActivity;

    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/splash/SplashActivity;->lambda$checkPermissions$0$SplashActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method
