.class Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;
.super Ljava/lang/Object;
.source "ScrappedActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->initReceiptType(Ljava/util/List;)V
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

    .line 187
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 190
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->access$000(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->access$100(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 191
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$1;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$2;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2$2;-><init>(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;I)V

    const-string v1, ""

    const-string v2, "\u4e0d\u540c\u5355\u636e\u7c7b\u578b\u5236\u4f5c\u4e0d\u80fd\u540c\u65f6\u63d0\u4ea4\uff0c\u5373\u5c06\u6e05\u7a7a\u5f53\u524d\u5546\u54c1\u5217\u8868\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    invoke-static {p1, p3}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->access$102(Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;I)I

    .line 221
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spReceiptType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u8bf7\u9009\u62e9"

    .line 222
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "\u8f66\u73ed\u4e22\u5931"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "\u8f66\u73ed\u62a5\u5e9f"

    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 227
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvScrappedTypeHint:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    const-string p2, "\u62a5\u5e9f"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->setPriceType(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->getScrappedType()V

    goto :goto_1

    .line 223
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->tvScrappedTypeHint:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->spScrappedType:Landroid/widget/Spinner;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;

    const-string p2, "\u4e22\u5931"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/scrapped/ScrappedPresenter;->setPriceType(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
