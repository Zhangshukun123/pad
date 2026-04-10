.class public interface abstract Lcom/ayma/commonerp/util/WifiAdmin$ScanCallBack;
.super Ljava/lang/Object;
.source "WifiAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/util/WifiAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ScanCallBack"
.end annotation


# virtual methods
.method public abstract fail(Ljava/lang/Throwable;)V
.end method

.method public abstract success(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method
