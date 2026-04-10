.class public final synthetic Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;ZLandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iput-boolean p2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$1:Z

    iput-object p3, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$2:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$0:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;

    iget-boolean v1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$1:Z

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/-$$Lambda$TeamReturnActivity$DhF2-XKfzDKAw-4U_dYxJ3vg8w4;->f$2:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity;->lambda$showSelectDateDialog$2$TeamReturnActivity(ZLandroid/widget/TextView;Landroid/content/DialogInterface;I)V

    return-void
.end method
