.class Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;
.super Ljava/lang/Object;
.source "ActivityCodeTool.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/activity/ActivityCodeTool;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;


# direct methods
.method constructor <init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 116
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$000(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u4e8c\u7ef4\u7801\u6587\u5b57\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 118
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$100(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    invoke-static {p1}, Lcom/vondear/rxfeature/tool/RxQRCode;->builder(Ljava/lang/CharSequence;)Lcom/vondear/rxfeature/tool/RxQRCode$Builder;

    move-result-object p1

    const/4 v0, -0x1

    .line 124
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxQRCode$Builder;->backColor(I)Lcom/vondear/rxfeature/tool/RxQRCode$Builder;

    move-result-object p1

    const/high16 v0, -0x1000000

    .line 125
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxQRCode$Builder;->codeColor(I)Lcom/vondear/rxfeature/tool/RxQRCode$Builder;

    move-result-object p1

    const/16 v0, 0x258

    .line 126
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxQRCode$Builder;->codeSide(I)Lcom/vondear/rxfeature/tool/RxQRCode$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    .line 127
    invoke-static {v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$200(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxQRCode$Builder;->into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 132
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$200(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "\u4e8c\u7ef4\u7801\u5df2\u751f\u6210!"

    .line 134
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->success(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    iget-object p1, p1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    iget-object v1, v1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-string v2, "MADE_CODE"

    invoke-static {v1, v2}, Lcom/vondear/rxtool/RxSPTool;->getContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vondear/rxtool/RxDataTool;->stringToInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/vondear/rxtool/RxSPTool;->putContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$300(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    .line 140
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$1;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$400(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->computeScroll()V

    :goto_0
    return-void
.end method
