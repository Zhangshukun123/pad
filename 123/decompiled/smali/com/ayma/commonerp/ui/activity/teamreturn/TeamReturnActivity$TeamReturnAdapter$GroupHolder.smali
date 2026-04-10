.class Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;
.super Ljava/lang/Object;
.source "TeamReturnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupHolder"
.end annotation


# instance fields
.field ivExpanded:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080555
    .end annotation
.end field

.field ivSelect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080557
    .end annotation
.end field

.field root:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f08061a
    .end annotation
.end field

.field final synthetic this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

.field tvDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080731
    .end annotation
.end field

.field tvGroupName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f080754
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;Landroid/view/View;)V
    .locals 0

    .line 1190
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter$GroupHolder;->this$1:Lcom/ayma/commonerp/ui/activity/teamreturn/TeamReturnActivity$TeamReturnAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1191
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
