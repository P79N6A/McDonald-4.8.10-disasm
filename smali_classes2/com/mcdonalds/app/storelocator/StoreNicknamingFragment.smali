.class public Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "StoreNicknamingFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;

.field customText:Landroid/widget/EditText;

.field private mCustomNickNamesInUse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNickNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field priorButton:Landroid/widget/CheckBox;

.field selectedNickname:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mCustomNickNamesInUse:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->priorButton:Landroid/widget/CheckBox;

    .line 53
    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;
    .param p1, "x1"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreNicknamingFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->reversePriorButton(Landroid/widget/CheckBox;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreNicknamingFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreNicknamingFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->textDuplicationWarning(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private eliminateDuplicateNames()V
    .locals 6

    .prologue
    const-string v3, "eliminateDuplicateNames"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 285
    .local v1, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/app/storelocator/StoresManager;->getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoresManager;->getAvailableNickNames()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    .line 286
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mCustomNickNamesInUse:Ljava/util/List;

    .line 287
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "selectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 291
    .local v0, "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mCustomNickNamesInUse:Ljava/util/List;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    .end local v0    # "favoriteStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mCustomNickNamesInUse:Ljava/util/List;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 301
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 303
    .end local v2    # "selectedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private reversePriorButton(Landroid/widget/CheckBox;)V
    .locals 3
    .param p1, "rb"    # Landroid/widget/CheckBox;

    .prologue
    const/4 v2, 0x0

    const-string v0, "reversePriorButton"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->priorButton:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->priorButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->priorButton:Landroid/widget/CheckBox;

    .line 312
    return-void
.end method

.method private textDuplicationWarning(Ljava/lang/CharSequence;)Z
    .locals 9
    .param p1, "nickName"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "textDuplicationWarning"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    const/4 v3, 0x0

    .line 318
    .local v3, "match":Z
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mCustomNickNamesInUse:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "aMCustomNickNamesInUse":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 320
    if-eqz v3, :cond_0

    .line 325
    .end local v0    # "aMCustomNickNamesInUse":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 326
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0905d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$7;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$7;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09081e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09057d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 339
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 342
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    return v3
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const v0, 0x7f09087f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090735

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->setHasOptionsMenu(Z)V

    .line 71
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->eliminateDuplicateNames()V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v0, "onCreateOptionsMenu"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 236
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 237
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v5, 0x7f0400e4

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 80
    .local v4, "rootView":Landroid/view/View;
    const v5, 0x7f110253

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 82
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const v7, 0x7f040142

    const v8, 0x7f11046b

    iget-object v9, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->mNickNames:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 83
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)V

    .line 128
    .local v3, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v5, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;

    const-string v6, "CheckBoxItemPressed"

    invoke-direct {v5, v6, v3}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;-><init>(Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 131
    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;

    invoke-direct {v5, p0, v2}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/ListView;)V

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 139
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040143

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 140
    .local v1, "editLayout":Landroid/view/View;
    const v5, 0x7f11046d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    .line 141
    const v5, 0x7f11046c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 143
    .local v0, "customCheckBox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;

    invoke-direct {v6, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$3;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    new-instance v6, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$4;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$4;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 183
    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$5;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    new-instance v5, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$6;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment$6;-><init>(Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 226
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 228
    return-object v4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const-string v3, "onOptionsItemSelected"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 244
    .local v0, "id":I
    const v3, 0x7f110545

    if-ne v0, v3, :cond_2

    .line 245
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 270
    :goto_0
    return v2

    .line 248
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->customText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->textDuplicationWarning(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 252
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    .line 254
    const-string v3, "/restaurant-locator"

    const-string v4, "Nickname Save"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v3, "name"

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->selectedNickname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 262
    .end local v1    # "resultIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 263
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreNicknamingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 270
    :cond_2
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method
