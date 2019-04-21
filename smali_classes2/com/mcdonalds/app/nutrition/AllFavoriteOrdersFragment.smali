.class public Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "AllFavoriteOrdersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mFavoriteOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->mHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment"

    const-string v2, "access$102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iput p1, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->mHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.AllFavoriteOrdersFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->mFavoriteOrders:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090868

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090792

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/nutrition/AllFavoritesActivity;

    .line 94
    .local v0, "allFavoritesActivity":Lcom/mcdonalds/app/nutrition/AllFavoritesActivity;
    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/AllFavoritesActivity;->bringBasketToFront()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "favoriteOrders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "favoriteOrders"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->mFavoriteOrders:Ljava/util/List;

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "favoriteOrders"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;->mFavoriteOrders:Ljava/util/List;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    const v1, 0x7f040083

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 84
    .local v0, "rootView":Landroid/widget/ListView;
    new-instance v1, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$FavoriteOrderListAdapter;-><init>(Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment;Lcom/mcdonalds/app/nutrition/AllFavoriteOrdersFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    return-object v0
.end method
