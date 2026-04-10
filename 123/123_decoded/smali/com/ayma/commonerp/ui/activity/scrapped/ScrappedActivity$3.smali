.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;
.super Ljava/lang/Object;
.source "ScrappedActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showInputScrappedRemarkDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

.field final synthetic val$tvContent:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->val$tvContent:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .line 301
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->val$tvContent:Landroid/widget/TextView;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x0

    aput-object p4, p3, v0

    const-string p4, "\u62a5\u5e9f\u539f\u56e0(150\u5b57\u5185)-%d\u5b57"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 p2, 0x96

    if-le p1, p2, :cond_0

    .line 303
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->val$tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const p3, 0x7f0501a0

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->val$tvContent:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->context:Landroid/content/Context;

    const p3, 0x7f050038

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
