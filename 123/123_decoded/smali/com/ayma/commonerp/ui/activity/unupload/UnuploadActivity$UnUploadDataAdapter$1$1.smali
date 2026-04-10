.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;
.super Ljava/lang/Object;
.source "UnuploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 187
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;

    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;->this$2:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-virtual {p2}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderNo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadPresenter;->deleteOrderByNo(Ljava/lang/String;)V

    return-void
.end method
