.class public Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "UnuploadActivity$UnUploadDataAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    .line 23
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08061a

    const-string v2, "field \'root\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080279

    const-string v2, "field \'tvGoodsCode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08027d

    const-string v2, "field \'tvGoodsName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08027b

    const-string v2, "field \'tvGoodsCount\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080281

    const-string v2, "field \'tvGoodsPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080277

    const-string v2, "field \'tvGoodsAllPrice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsAllPrice:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080285

    const-string v2, "field \'tvGoodsSellType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellType:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f08027f

    const-string v2, "field \'tvGoodsPayType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPayType:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f080283

    const-string v2, "field \'tvGoodsSellTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellTime:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder_ViewBinding;->target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;

    .line 41
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->root:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCode:Landroid/widget/TextView;

    .line 43
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsName:Landroid/widget/TextView;

    .line 44
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsCount:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPrice:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsAllPrice:Landroid/widget/TextView;

    .line 47
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellType:Landroid/widget/TextView;

    .line 48
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsPayType:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity$UnUploadDataAdapter$ViewHolder;->tvGoodsSellTime:Landroid/widget/TextView;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
