.class Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;
.super Ljava/lang/Object;
.source "OffSiteAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->initSupplier(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

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

    .line 368
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$200(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/adapter/ReceiptAdapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$300(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;)I

    move-result p1

    if-eq p1, p3, :cond_0

    .line 369
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    new-instance v4, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$1;

    invoke-direct {v4, p0}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$1;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;)V

    new-instance v6, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;

    invoke-direct {v6, p0, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4$2;-><init>(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;I)V

    const-string v1, "\u6ce8\u610f"

    const-string v2, "\u4e0d\u80fd\u540c\u65f6\u63d0\u4ea4\u4e0d\u540c\u4f9b\u5e94\u5546\u7684\u5546\u54c1\uff0c\u5373\u5c06\u6e05\u7a7a\u5f53\u524d\u5df2\u9009\u62e9\u7684\u5546\u54c1\u5217\u8868\uff0c\n\u662f\u5426\u7ee7\u7eed\uff1f"

    const-string v3, "\u53d6\u6d88"

    const-string v5, "\u786e\u5b9a"

    invoke-virtual/range {v0 .. v6}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 387
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->spSupplier:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$402(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 388
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;

    invoke-static {p1, p3}, Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;->access$302(Lcom/ayma/commonerp/ui/activity/offsizeadd/OffSiteAddActivity;I)I

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
