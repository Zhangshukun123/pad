.class public interface abstract Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact$SellCounterView;
.super Ljava/lang/Object;
.source "SellCounterContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/sellcounter/SellCounterContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SellCounterView"
.end annotation


# virtual methods
.method public abstract setTitle(Ljava/lang/String;)V
.end method

.method public abstract showOpenStatue(Lcom/ayma/commonerp/bean/OpenShopBean;)V
.end method

.method public abstract switchFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
.end method

.method public abstract switchToOpenShop()V
.end method

.method public abstract switchToOrder()V
.end method
