.class public final synthetic Lcom/ayma/commonerp/ui/activity/systemsetting/-$$Lambda$SystemSettingActivity$xDE34RCpFhXIThTdwCrjW8BqBXI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/-$$Lambda$SystemSettingActivity$xDE34RCpFhXIThTdwCrjW8BqBXI;->f$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/systemsetting/-$$Lambda$SystemSettingActivity$xDE34RCpFhXIThTdwCrjW8BqBXI;->f$0:Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;

    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingActivity;->lambda$checkLocationPermission$0$SystemSettingActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method
