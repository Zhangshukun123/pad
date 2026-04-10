.class public Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;
.super Lcom/ayma/commonerp/base/BaseModel;
.source "OnlineRefundModel.java"

# interfaces
.implements Lcom/ayma/commonerp/ui/activity/onlinerefund/IOnlineRefundModel;


# instance fields
.field private selectList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/ayma/commonerp/base/BaseModel;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinerefund/OnlineRefundModel;->selectList:Ljava/util/Map;

    return-void
.end method
