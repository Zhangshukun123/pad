.class Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UnuploadActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding;-><init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding;

.field final synthetic val$target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding;Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding$1;->this$0:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity_ViewBinding$1;->val$target:Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/unupload/UnuploadActivity;->onUploadClick(Landroid/view/View;)V

    return-void
.end method
