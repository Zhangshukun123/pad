.class public final synthetic Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

.field public final synthetic f$2:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$2:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$1:Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;

    iget-object v2, p0, Landroidx/navigation/dynamicfeatures/-$$Lambda$DynamicInstallManager$VbRBtgqHhhXnroSZ_A1utu8gI-4;->f$2:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1, v2, p1}, Landroidx/navigation/dynamicfeatures/DynamicInstallManager;->lambda$VbRBtgqHhhXnroSZ_A1utu8gI-4(Ljava/lang/String;Landroidx/navigation/dynamicfeatures/DynamicInstallMonitor;Landroidx/lifecycle/MutableLiveData;Ljava/lang/Exception;)V

    return-void
.end method
