.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "NutritionCategoryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;,
        Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$Nutri;
    }
.end annotation


# instance fields
.field private final mCategoriesListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCategoriesLoaded:Z

.field private mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

.field private mCategoryList:Landroid/widget/ListView;

.field private mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

.field private final mOnClickCategoryItem:Landroid/widget/AdapterView$OnItemClickListener;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 189
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$2;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mOnClickCategoryItem:Landroid/widget/AdapterView$OnItemClickListener;

    .line 213
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoriesListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Landroid/widget/ListView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mOnClickCategoryItem:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryListFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-boolean p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoriesLoaded:Z

    return p1
.end method

.method private loadCategories()V
    .locals 2

    .prologue
    const-string v0, "loadCategories"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoriesListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoriesLoaded:Z

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f09040d

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    :cond_1
    return-void
.end method

.method private loadHeaderImage(Landroid/view/LayoutInflater;)V
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v6, 0x0

    const-string v4, "loadHeaderImage"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const v4, 0x7f040155

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 112
    .local v1, "header":Landroid/view/View;
    const v4, 0x7f110485

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 113
    .local v0, "foodMenuTop":Landroid/widget/ImageView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.topImageJson"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "jsonUrl":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/util/SimpleJsonRequest;

    const-class v4, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$NutritionResponse;

    invoke-direct {v3, v2, v4}, Lcom/mcdonalds/app/util/SimpleJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    .local v3, "request":Lcom/mcdonalds/app/util/SimpleJsonRequest;
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    new-instance v5, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v3, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 137
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 138
    return-void
.end method


# virtual methods
.method public getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const v0, 0x7f090880

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    if-nez v0, :cond_0

    .line 165
    const-string v0, "nutritionInfo"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mNutritionModule:Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 166
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->loadCategories()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->loadCategories()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->setServiceConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    .line 59
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f040156

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->setServiceConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const v1, 0x7f0400e7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    .line 101
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->loadHeaderImage(Landroid/view/LayoutInflater;)V

    .line 105
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 83
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 85
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->mCategoryAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->setServiceConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 88
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 176
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 237
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 238
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 243
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 244
    return-void
.end method
