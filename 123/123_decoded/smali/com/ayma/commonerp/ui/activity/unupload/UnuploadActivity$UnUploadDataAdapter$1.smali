.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;
.super Ljava/lang/Object;
.source "UnuploadActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->onBindViewHolder(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;Lcom/ayma/commonerp/bean/SellDetailBean;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9

    .line 178
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->this$1:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;

    iget-object v1, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    new-array p1, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;->val$bean:Lcom/ayma/commonerp/bean/SellDetailBean;

    .line 182
    invoke-virtual {v0}, Lcom/ayma/commonerp/bean/SellDetailBean;->getOrderNo()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    aput-object v0, p1, v8

    const-string v0, "\u662f\u5426\u8981\u5220\u9664\u5f53\u524d\u884c\u6240\u5c5e\u8ba2\u5355\u3010%s\u3011\u4e2d\u7684\u6240\u6709\u6570\u636e\uff1f\n\n"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v7, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;

    invoke-direct {v7, p0}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1$1;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$1;)V

    const-string v2, ""

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u5220\u9664"

    .line 181
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return v8
.end method
