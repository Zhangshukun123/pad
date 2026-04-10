.class public final synthetic Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;->f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;->f$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/-$$Lambda$MenuActivity$229HkYsyY73sqE1DjArD14jDSY0;->f$1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->lambda$showSelectDateDialog$6$MenuActivity(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
