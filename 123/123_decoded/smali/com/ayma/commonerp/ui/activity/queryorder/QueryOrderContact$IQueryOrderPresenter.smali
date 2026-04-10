.class public interface abstract Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact$IQueryOrderPresenter;
.super Ljava/lang/Object;
.source "QueryOrderContact.java"

# interfaces
.implements Lcom/ayma/commonerp/base/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/queryorder/QueryOrderContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IQueryOrderPresenter"
.end annotation


# virtual methods
.method public abstract filterList(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getBaseData()V
.end method

.method public abstract initHandler()V
.end method

.method public abstract queryAllOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendMsg(ILjava/lang/Object;)V
.end method

.method public abstract sortList(Z)V
.end method
