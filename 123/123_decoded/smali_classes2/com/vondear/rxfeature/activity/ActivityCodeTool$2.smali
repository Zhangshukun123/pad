.class Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;
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

    .line 145
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 148
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$500(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/vondear/rxtool/RxDataTool;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u6761\u5f62\u7801\u6587\u5b57\u5185\u5bb9\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    .line 150
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$600(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    invoke-static {p1}, Lcom/vondear/rxfeature/tool/RxBarCode;->builder(Ljava/lang/CharSequence;)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;

    move-result-object p1

    .line 156
    invoke-virtual {p1, v1}, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->backColor(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;

    move-result-object p1

    const/high16 v0, -0x1000000

    .line 157
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeColor(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;

    move-result-object p1

    const/16 v0, 0x3e8

    .line 158
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeWidth(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;

    move-result-object p1

    const/16 v0, 0x12c

    .line 159
    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->codeHeight(I)Lcom/vondear/rxfeature/tool/RxBarCode$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    .line 160
    invoke-static {v0}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$700(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vondear/rxfeature/tool/RxBarCode$Builder;->into(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    .line 165
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$700(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p1, "\u6761\u5f62\u7801\u5df2\u751f\u6210!"

    .line 167
    invoke-static {p1}, Lcom/vondear/rxtool/view/RxToast;->success(Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    iget-object p1, p1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

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

    .line 171
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$2;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$300(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V

    :goto_0
    return-void
.end method
