.class public interface abstract Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact$ISystemSettingView;
.super Ljava/lang/Object;
.source "SystemSettingContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/systemsetting/SystemSettingContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISystemSettingView"
.end annotation


# virtual methods
.method public abstract checkLocationPermission()V
.end method

.method public abstract dealScanResult(Ljava/lang/String;)V
.end method

.method public abstract inputWifiPwd(Landroid/net/wifi/ScanResult;)V
.end method

.method public abstract notifyListChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scanWifi()V
.end method
