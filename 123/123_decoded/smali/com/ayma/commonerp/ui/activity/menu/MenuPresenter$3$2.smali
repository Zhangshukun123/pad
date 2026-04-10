.class Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3$2;
.super Ljava/lang/Object;
.source "MenuPresenter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;->requestError(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 200
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3$2;->this$1:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter$3;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuPresenter;->downloadPdaPermission()V

    return-void
.end method
