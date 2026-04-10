.class Lcom/ayma/commonerp/base/BaseActivity$6;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/base/BaseActivity;->setAutoSizeConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/base/BaseActivity;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/ayma/commonerp/base/BaseActivity$6;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/ayma/commonerp/base/BaseActivity$6;->this$0:Lcom/ayma/commonerp/base/BaseActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/base/BaseActivity;->access$201(Lcom/ayma/commonerp/base/BaseActivity;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lme/jessyan/autosize/AutoSizeCompat;->autoConvertDensityOfGlobal(Landroid/content/res/Resources;)V

    return-void
.end method
