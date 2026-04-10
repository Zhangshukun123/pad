.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$4;
.super Ljava/lang/Object;
.source "ScrappedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 366
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
