.class public Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "StoreLocatorContainerFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

.field mAutoSelectClosestStore:Z

.field private mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

.field private mCurrentFragment:Landroid/support/v4/app/Fragment;

.field mCurrentStoreSelectionMode:Z

.field mDismissOnStartOrder:Z

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field public mIsFirstLoad:Z

.field private mIsRefreshLoad:Z

.field private mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

.field private mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

.field mMapOnly:Z

.field public mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

.field private mMobileOrderFilterLayoutContainer:Landroid/widget/FrameLayout;

.field mNearbySearchAddress:Ljava/lang/String;

.field private mOffersMode:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mSearchAndFilterLayout:Landroid/widget/LinearLayout;

.field private mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

.field private mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

.field private mSelectorCheckedID:I

.field private mStoreFilterSwitch:Landroid/widget/Switch;

.field private mTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsRefreshLoad:Z

    .line 102
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapOnly:Z

    .line 519
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$3;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;I)I
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;I)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->switchFragment(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorContainerFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsRefreshLoad:Z

    return v0
.end method

.method private checkForPendingAddToFavorites()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v5, "checkForPendingAddToFavorites"

    invoke-static {p0, v5, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 374
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 376
    const-string v5, "EXTRA_SAVING_FAVORITE"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 377
    .local v1, "pendingAddToFavorites":Z
    if-eqz v1, :cond_0

    .line 379
    const-string v5, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {v0, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 380
    .local v3, "pendingStoreId":I
    if-eq v3, v7, :cond_0

    .line 382
    const-string v5, "saving_fav_section"

    .line 383
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 385
    .local v2, "pendingSection":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    const-string v5, "StoreLocatorFragment.SAVING_FAVORITE_NICKNAME"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "storeNickName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v5, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setSelectedStoreNickName(Ljava/lang/String;)V

    .line 389
    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 392
    const-string v5, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 393
    const-string v5, "StoreLocatorFragment.SAVING_FAVORITE_ID"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 394
    const-string v5, "saving_fav_section"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 395
    const-string v5, "StoreLocatorFragment.SAVING_FAVORITE_NICKNAME"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 399
    .end local v1    # "pendingAddToFavorites":Z
    .end local v2    # "pendingSection":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .end local v3    # "pendingStoreId":I
    .end local v4    # "storeNickName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private searchByname()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "searchByname"

    invoke-static {p0, v2, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 679
    .local v1, "trimmedString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    invoke-interface {v2, v1, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->requestUpdateStoresByAddress(Ljava/lang/String;Z)V

    .line 685
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 687
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "PREF_LOCATION_SEARCH_TITLE"

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getStringList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 689
    .local v0, "searchTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 690
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 696
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_0

    .line 698
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 701
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "PREF_LOCATION_SEARCH_TITLE"

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->set(Ljava/lang/String;Ljava/util/List;)V

    .line 706
    .end local v0    # "searchTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 693
    .restart local v0    # "searchTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getCleanText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 704
    .end local v0    # "searchTitleList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->requestUpdateStoresByCurrentLocation(Z)V

    goto :goto_1
.end method

.method private showCurrentView()V
    .locals 6

    .prologue
    const-string v4, "showCurrentView"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    .line 644
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 645
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 649
    iget v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    if-nez v4, :cond_1

    .line 650
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 651
    .local v1, "hideFragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 653
    .local v3, "showFragment":Landroid/support/v4/app/Fragment;
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 662
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 665
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 666
    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 667
    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 668
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 670
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    .line 674
    :cond_0
    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 675
    return-void

    .line 655
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    .end local v1    # "hideFragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 656
    .restart local v1    # "hideFragment":Landroid/support/v4/app/Fragment;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 658
    .restart local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    goto :goto_0
.end method

.method private switchFragment(I)V
    .locals 5
    .param p1, "tabId"    # I

    .prologue
    const-string v1, "switchFragment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 560
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-nez p1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 563
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 564
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 565
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 567
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 569
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "List"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 583
    return-void

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 573
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 574
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 575
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 577
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 579
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Map"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkLocationPermission()V
    .locals 5

    .prologue
    const-string v0, "checkLocationPermission"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v2, 0x0

    const v3, 0x7f090626

    new-instance v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$4;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->requestPermission(Ljava/lang/String;IILcom/mcdonalds/app/ui/URLNavigationActivity$PermissionListener;)V

    .line 745
    :cond_0
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x12

    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    if-ne v0, v1, :cond_0

    .line 130
    const v0, 0x7f0908a5

    .line 131
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    .line 137
    :goto_0
    const v0, 0x7f0908a0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const v0, 0x7f0908a6

    .line 134
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->trackCustom(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 2

    .prologue
    const-string v0, "getController"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method

.method public getSearchView()Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;
    .locals 2

    .prologue
    const-string v0, "getSearchView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 709
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 433
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 435
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 438
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const-string v4, "MAP_FRAGMENT"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 439
    const-string v4, "LIST_FRAGMENT"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 440
    const-string v4, "SEARCH_FRAGMENT"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 444
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$5;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorContainerFragment$ActiveFragment:[I

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 465
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 466
    .local v3, "showFragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 467
    .local v1, "hideFragment1":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 469
    .local v2, "hideFragment2":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 474
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 475
    invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 476
    invoke-virtual {v4, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 477
    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 478
    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 480
    return-void

    .line 447
    .end local v1    # "hideFragment1":Landroid/support/v4/app/Fragment;
    .end local v2    # "hideFragment2":Landroid/support/v4/app/Fragment;
    .end local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    :pswitch_0
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 448
    .restart local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 449
    .restart local v1    # "hideFragment1":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 451
    .restart local v2    # "hideFragment2":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 456
    .end local v1    # "hideFragment1":Landroid/support/v4/app/Fragment;
    .end local v2    # "hideFragment2":Landroid/support/v4/app/Fragment;
    .end local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    :pswitch_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 457
    .restart local v3    # "showFragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 458
    .restart local v1    # "hideFragment1":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 460
    .restart local v2    # "hideFragment2":Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iput-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    goto :goto_0

    .line 444
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 593
    sparse-switch p1, :sswitch_data_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 596
    :sswitch_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 597
    const-string v3, "name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "name":Ljava/lang/String;
    const-string v3, "EXTRA_STORE_ID"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 599
    .local v2, "storeId":I
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 600
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v3, v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->nickNameChangedOnStoreId(Ljava/lang/String;I)V

    .line 603
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "storeId":I
    :cond_1
    iput-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsRefreshLoad:Z

    goto :goto_0

    .line 607
    :sswitch_1
    packed-switch p2, :pswitch_data_0

    .line 618
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 609
    :pswitch_0
    const-string v3, "name"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "newName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->nickNameSelected(Ljava/lang/String;)V

    .line 613
    iput-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsRefreshLoad:Z

    goto :goto_0

    .line 625
    .end local v1    # "newName":Ljava/lang/String;
    :sswitch_2
    packed-switch p2, :pswitch_data_1

    .line 635
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 629
    :pswitch_1
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setEnabled(Z)V

    .line 630
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    goto :goto_0

    .line 593
    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x1d -> :sswitch_0
        0x7531 -> :sswitch_2
    .end sparse-switch

    .line 607
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 625
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapOnly:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentStoreSelectionMode:Z

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mNearbySearchAddress:Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mDismissOnStartOrder:Z

    .line 159
    const/4 v11, 0x0

    .line 160
    .local v11, "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    const/4 v7, 0x0

    .line 162
    .local v7, "allowsSelection":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 163
    .local v8, "arguments":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 167
    const-string v0, "OFFERS_MODE"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mOffersMode:Z

    .line 170
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v0

    const-string v1, "DATA_PASSER_KEY"

    .line 171
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    check-cast v11, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    .line 172
    .restart local v11    # "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    const-string v0, "EXTRA_ALLOWS_SELECTION"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 191
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mOffersMode:Z

    if-eqz v0, :cond_7

    .end local v11    # "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    :goto_1
    iput-object v11, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isCurrentStoreSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentStoreSelectionMode:Z

    .line 204
    if-eqz v7, :cond_1

    .line 205
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setAllowsSelectionWithoutMobileOrdering(Z)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 213
    :cond_2
    if-eqz p1, :cond_8

    .line 214
    const-string v0, "CHECKED_SELECTOR_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    .line 215
    const-string v0, "VISIBLE_FRAGMENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 232
    :goto_2
    if-nez p1, :cond_4

    .line 234
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    .line 235
    .local v9, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iget-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsFirstLoad:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setIsFirstLoad(Z)V

    .line 239
    if-eqz v8, :cond_3

    .line 240
    const-string v0, "EXTRA_INITIAL_CAMERA_POSITION"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .line 241
    .local v12, "position":Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    if-eqz v12, :cond_3

    .line 242
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-virtual {v0, v12}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->setInitialCameraPosition(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    .line 246
    .end local v12    # "position":Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
    :cond_3
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1103e4

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    const-string v3, "MAP_FRAGMENT"

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 250
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 253
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1103e4

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    const-string v3, "LIST_FRAGMENT"

    .line 254
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 257
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 258
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 260
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1103e4

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    const-string v3, "SEARCH_FRAGMENT"

    .line 261
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 264
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 267
    .end local v9    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0907c3

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    return-void

    .line 176
    .restart local v11    # "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    :cond_5
    const-string v0, "map_only"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapOnly:Z

    .line 177
    const-string v0, "set_current_store"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentStoreSelectionMode:Z

    .line 178
    const-string v0, "select_closest"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mAutoSelectClosestStore:Z

    .line 179
    const-string v0, "dismiss_on_place_order"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mDismissOnStartOrder:Z

    .line 180
    const-string v0, "search_by_address"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mNearbySearchAddress:Ljava/lang/String;

    .line 181
    const-string v0, "EXTRA_FIRST_LOAD"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mIsFirstLoad:Z

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mNearbySearchAddress:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mAutoSelectClosestStore:Z

    .line 187
    :cond_6
    const-string v0, "DATA_PASSER_KEY"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    .end local v7    # "allowsSelection":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "allowsSelection":Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 191
    :cond_7
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapOnly:Z

    iget-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentStoreSelectionMode:Z

    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mAutoSelectClosestStore:Z

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mNearbySearchAddress:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mDismissOnStartOrder:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;-><init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;ZZZLjava/lang/String;Z)V

    move-object v11, v0

    goto/16 :goto_1

    .line 218
    .end local v11    # "offersStoreLocatorController":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    :cond_8
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.storelocator.storeMapAsDefaultView"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v10

    .line 219
    .local v10, "isMapDefault":Z
    if-nez v10, :cond_9

    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mOffersMode:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentStoreSelectionMode:Z

    if-eqz v0, :cond_a

    .line 221
    :cond_9
    const/4 v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    .line 222
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    goto/16 :goto_2

    .line 225
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    .line 226
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->List:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 272
    const v2, 0x7f040119

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    .local v0, "group":Landroid/view/ViewGroup;
    const v2, 0x7f1100ee

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    .line 275
    const v2, 0x7f1100e9

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 276
    const v2, 0x7f1103e0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchAndFilterLayout:Landroid/widget/LinearLayout;

    .line 277
    const v2, 0x7f1103e1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayoutContainer:Landroid/widget/FrameLayout;

    .line 278
    const v2, 0x7f1103e2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    .line 279
    const v2, 0x7f1103e3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mStoreFilterSwitch:Landroid/widget/Switch;

    .line 280
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mStoreFilterSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.storelocator.showMobileOrderingStoreQuickSelect"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 284
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->filterNearbyBasedOnMobileOrdering()V

    .line 285
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mStoreFilterSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStoreFilterToggled(Z)V

    .line 291
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v5}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 323
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    iget-boolean v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapOnly:Z

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->setMapOnly(Z)V

    .line 325
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->isMapOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Map:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 327
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchAndFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    .line 333
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 334
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 337
    :cond_1
    return-object v0

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayoutContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const v4, 0x7f09044d

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 295
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const v4, 0x7f090509

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const-string v4, "map"

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setTag(Ljava/lang/Object;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 297
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v1

    .line 298
    .local v1, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v1, :cond_4

    .line 299
    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mTabLayout:Landroid/support/design/widget/TabLayout;

    new-instance v3, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 587
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 588
    return-void
.end method

.method public onDetach()V
    .locals 4

    .prologue
    .line 486
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 487
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 490
    :try_start_0
    const-class v2, Landroid/support/v4/app/Fragment;

    const-string v3, "mChildFragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 491
    .local v0, "childFragmentManager":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 492
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    return-void

    .line 494
    .end local v0    # "childFragmentManager":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 496
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "onEditorAction"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    if-eq p2, v5, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    .line 537
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->showCurrentView()V

    .line 539
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->searchByname()V

    .line 542
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;->updateViewItems()V

    .line 552
    :goto_0
    return v0

    .line 547
    :cond_1
    if-nez p2, :cond_2

    .line 548
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->clearFocus()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 552
    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const-string v0, "onFocusChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    if-eq v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    .line 508
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mListFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .line 509
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMapFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .line 510
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 511
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 513
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;->Search:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    .line 514
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    .line 515
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setEnabled(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->getField()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 410
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 414
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 418
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 420
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorSearchFragment;

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSearchView:Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/GeoSuggestionsEditText;->setEnabled(Z)V

    .line 422
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onSaveInstanceState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    const-string v0, "CHECKED_SELECTOR_ID"

    iget v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mSelectorCheckedID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v0, "VISIBLE_FRAGMENT"

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mActiveFragment:Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment$ActiveFragment;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 146
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 342
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 344
    const-string v0, "storeLocator"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    const-string v0, "The StoreLocator module is not enabled"

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->checkLocationPermission()V

    .line 355
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->checkForPendingAddToFavorites()V

    .line 356
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 357
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 361
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 362
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showNavigateUp(Z)V

    .line 363
    return-void
.end method
