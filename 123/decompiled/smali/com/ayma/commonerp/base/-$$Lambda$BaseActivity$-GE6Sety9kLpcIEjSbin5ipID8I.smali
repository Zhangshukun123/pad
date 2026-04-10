.class public final synthetic Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$-GE6Sety9kLpcIEjSbin5ipID8I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/base/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$-GE6Sety9kLpcIEjSbin5ipID8I;->f$0:Lcom/ayma/commonerp/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ayma/commonerp/base/-$$Lambda$BaseActivity$-GE6Sety9kLpcIEjSbin5ipID8I;->f$0:Lcom/ayma/commonerp/base/BaseActivity;

    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/base/BaseActivity;->lambda$checkPermissions$0$BaseActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method
