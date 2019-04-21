.class public Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ConfigSwitcherFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const-string v0, "/configuration-selection"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const v4, 0x7f0400aa

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 47
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f110295

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;

    .line 49
    .local v2, "configListView":Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v0, "configKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->getSharedInstance()Lcom/mcdonalds/app/AutoLoadedConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/AutoLoadedConfigurations;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 52
    new-instance v1, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 54
    .local v1, "configListAdapter":Lcom/mcdonalds/app/ui/ConfigSwitcherListAdapter;
    invoke-virtual {v2, v1}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setAdapter(Lse/emilsjolander/stickylistheaders/StickyListHeadersAdapter;)V

    .line 55
    new-instance v4, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/mcdonalds/app/ui/ConfigSwitcherFragment$1;-><init>(Lcom/mcdonalds/app/ui/ConfigSwitcherFragment;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lse/emilsjolander/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-object v3
.end method
