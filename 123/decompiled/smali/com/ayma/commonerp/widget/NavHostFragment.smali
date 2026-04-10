.class public Lcom/ayma/commonerp/widget/NavHostFragment;
.super Landroidx/fragment/app/Fragment;
.source "NavHostFragment.java"

# interfaces
.implements Landroidx/navigation/NavHost;


# static fields
.field private static final KEY_DEFAULT_NAV_HOST:Ljava/lang/String; = "android-support-nav:fragment:defaultHost"

.field private static final KEY_GRAPH_ID:Ljava/lang/String; = "android-support-nav:fragment:graphId"

.field private static final KEY_NAV_CONTROLLER_STATE:Ljava/lang/String; = "android-support-nav:fragment:navControllerState"

.field private static final KEY_START_DESTINATION_ARGS:Ljava/lang/String; = "android-support-nav:fragment:startDestinationArgs"


# instance fields
.field private mDefaultNavHost:Z

.field private mGraphId:I

.field private mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

.field private mNavController:Landroidx/navigation/NavHostController;

.field private mViewParent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    return-void
.end method

.method public static create(I)Lcom/ayma/commonerp/widget/NavHostFragment;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0}, Lcom/ayma/commonerp/widget/NavHostFragment;->create(ILandroid/os/Bundle;)Lcom/ayma/commonerp/widget/NavHostFragment;

    move-result-object p0

    return-object p0
.end method

.method public static create(ILandroid/os/Bundle;)Lcom/ayma/commonerp/widget/NavHostFragment;
    .locals 2

    if-eqz p0, :cond_0

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android-support-nav:fragment:graphId"

    .line 145
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 149
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    :cond_1
    const-string p0, "android-support-nav:fragment:startDestinationArgs"

    .line 151
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    :cond_2
    new-instance p0, Lcom/ayma/commonerp/widget/NavHostFragment;

    invoke-direct {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;-><init>()V

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p0, v0}, Lcom/ayma/commonerp/widget/NavHostFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_3
    return-object p0
.end method

.method public static findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;
    .locals 3

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 93
    instance-of v1, v0, Lcom/ayma/commonerp/widget/NavHostFragment;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/ayma/commonerp/widget/NavHostFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 96
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 98
    instance-of v2, v1, Lcom/ayma/commonerp/widget/NavHostFragment;

    if-eqz v2, :cond_1

    .line 99
    check-cast v1, Lcom/ayma/commonerp/widget/NavHostFragment;

    invoke-virtual {v1}, Lcom/ayma/commonerp/widget/NavHostFragment;->getNavController()Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 101
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object p0

    return-object p0

    .line 109
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a NavController set"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getContainerId()I
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const v0, 0x7f0805b5

    return v0
.end method


# virtual methods
.method protected createFragmentNavigator()Landroidx/navigation/Navigator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/navigation/Navigator<",
            "+",
            "Lcom/ayma/commonerp/widget/FragmentNavigator$Destination;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    new-instance v0, Lcom/ayma/commonerp/widget/FragmentNavigator;

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 285
    invoke-direct {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getContainerId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/ayma/commonerp/widget/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    return-object v0
.end method

.method public final getNavController()Landroidx/navigation/NavController;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_0

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavController is not available before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 181
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 185
    iget-boolean p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mDefaultNavHost:Z

    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 195
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    new-instance v1, Landroidx/navigation/NavHostController;

    invoke-direct {v1, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    .line 199
    invoke-virtual {v1, p0}, Landroidx/navigation/NavHostController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 200
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavHostController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    .line 203
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 203
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    .line 206
    iget-object v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/navigation/NavHostController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    .line 207
    iget-object v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {p0, v1}, Lcom/ayma/commonerp/widget/NavHostFragment;->onCreateNavController(Landroidx/navigation/NavController;)V

    const-string v1, "android-support-nav:fragment:graphId"

    if-eqz p1, :cond_2

    const-string v4, "android-support-nav:fragment:navControllerState"

    .line 211
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:defaultHost"

    .line 212
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    iput-boolean v2, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mDefaultNavHost:Z

    .line 214
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 215
    invoke-virtual {v2, p0}, Landroidx/fragment/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    .line 216
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 218
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mGraphId:I

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_3

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {p1, v4}, Landroidx/navigation/NavHostController;->restoreState(Landroid/os/Bundle;)V

    .line 225
    :cond_3
    iget p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mGraphId:I

    if-eqz p1, :cond_4

    .line 227
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavHostController;->setGraph(I)V

    goto :goto_2

    .line 230
    :cond_4
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "android-support-nav:fragment:startDestinationArgs"

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_6
    if-eqz v3, :cond_7

    .line 236
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {p1, v3, v0}, Landroidx/navigation/NavHostController;->setGraph(ILandroid/os/Bundle;)V

    :cond_7
    :goto_2
    return-void
.end method

.method protected onCreateNavController(Landroidx/navigation/NavController;)V
    .locals 4

    .line 256
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v0

    new-instance v1, Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 257
    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 256
    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 258
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->createFragmentNavigator()Landroidx/navigation/Navigator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 292
    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    .line 297
    invoke-direct {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getContainerId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentContainerView;->setId(I)V

    return-object p2
.end method

.method public onDestroyView()V
    .locals 3

    .line 376
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 377
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mViewParent:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iget-object v2, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    if-ne v0, v2, :cond_0

    .line 378
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mViewParent:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 380
    :cond_0
    iput-object v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mViewParent:Landroid/view/View;

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .line 339
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 341
    sget-object p3, Landroidx/navigation/R$styleable;->NavHost:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iput v1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mGraphId:I

    .line 348
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 350
    sget-object p3, Lcom/ayma/commonerp/R$styleable;->NavHostFragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 351
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 353
    iput-boolean p2, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mDefaultNavHost:Z

    .line 355
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onPrimaryNavigationFragmentChanged(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0, p1}, Landroidx/navigation/NavHostController;->enableOnBackPressed(Z)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mIsPrimaryBeforeOnCreate:Ljava/lang/Boolean;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 361
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 362
    iget-object v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-virtual {v0}, Landroidx/navigation/NavHostController;->saveState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android-support-nav:fragment:navControllerState"

    .line 364
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 366
    :cond_0
    iget-boolean v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mDefaultNavHost:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "android-support-nav:fragment:defaultHost"

    .line 367
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 369
    :cond_1
    iget v0, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mGraphId:I

    if-eqz v0, :cond_2

    const-string v1, "android-support-nav:fragment:graphId"

    .line 370
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 320
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 321
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    .line 324
    iget-object p2, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mViewParent:Landroid/view/View;

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0}, Lcom/ayma/commonerp/widget/NavHostFragment;->getId()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 330
    iget-object p1, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mViewParent:Landroid/view/View;

    iget-object p2, p0, Lcom/ayma/commonerp/widget/NavHostFragment;->mNavController:Landroidx/navigation/NavHostController;

    invoke-static {p1, p2}, Landroidx/navigation/Navigation;->setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V

    :cond_0
    return-void

    .line 322
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "created host view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a ViewGroup"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
