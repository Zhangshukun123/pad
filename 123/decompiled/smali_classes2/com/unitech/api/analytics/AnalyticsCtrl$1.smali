.class Lcom/unitech/api/analytics/AnalyticsCtrl$1;
.super Ljava/lang/Object;
.source "AnalyticsCtrl.java"

# interfaces
.implements Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unitech/api/analytics/AnalyticsCtrl;->createServiceConnectionCallback()Lcom/unitech/api/util/ServiceHandler$ServiceConnectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unitech/api/analytics/AnalyticsCtrl;


# direct methods
.method constructor <init>(Lcom/unitech/api/analytics/AnalyticsCtrl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl$1;->this$0:Lcom/unitech/api/analytics/AnalyticsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 161
    iget-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl$1;->this$0:Lcom/unitech/api/analytics/AnalyticsCtrl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->access$002(Lcom/unitech/api/analytics/AnalyticsCtrl;Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AnalyticsCtrl, Service %s is connected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl$1;->this$0:Lcom/unitech/api/analytics/AnalyticsCtrl;

    invoke-static {p2}, Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/unitech/api/analytics/AnalyticsCtrl;->access$002(Lcom/unitech/api/analytics/AnalyticsCtrl;Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AnalyticsCtrl, Service %s is disconnected"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UnitechSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p1, p0, Lcom/unitech/api/analytics/AnalyticsCtrl$1;->this$0:Lcom/unitech/api/analytics/AnalyticsCtrl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unitech/api/analytics/AnalyticsCtrl;->access$002(Lcom/unitech/api/analytics/AnalyticsCtrl;Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;)Lcom/unitech/analyticsservice/AnalyticServiceAidlInterface;

    return-void
.end method
