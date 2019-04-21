.class public Lcom/mcdonalds/app/account/OfferPreferencesFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OfferPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mAllCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesMade:Z

.field protected mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDisableButton:Landroid/widget/Button;

.field private mFirstPass:Z

.field private mInstructionsLayout:Landroid/widget/RelativeLayout;

.field private mIsDisableButton:Z

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mListView:Landroid/widget/ListView;

.field private mMasterToggleContainer:Landroid/widget/LinearLayout;

.field private mOffersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/account/OfferData;",
            ">;"
        }
    .end annotation
.end field

.field protected mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

.field private mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

.field private mPreferredOfferCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribedToOffers:Z

.field private trackFromAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mAllCategories:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersList:Ljava/util/List;

    .line 71
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mChangesMade:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mFirstPass:Z

    .line 74
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    .line 77
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackFromAll:Z

    .line 82
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackFromAll:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->handleSubscriptionChange(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$1202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mChangesMade:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$400"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackProductOfferOpt(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->updateDisableButtonState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mAllCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mAllCategories:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$800"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->populateSubscribeToOffers(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Landroid/widget/CompoundButton;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;
    .param p1, "x1"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.OfferPreferencesFragment"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->showDisableDialog(Landroid/widget/CompoundButton;)V

    return-void
.end method

.method private handleSubscriptionChange(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v7, 0x1

    const-string v2, "handleSubscriptionChange"

    new-array v5, v7, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v5, v3

    invoke-static {p0, v2, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iput-boolean v7, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mChangesMade:Z

    .line 324
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mSubscribedToOffers:Z

    .line 326
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v5, "interface.offers.hideOfferCategoryPreferenceSelection"

    .line 327
    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 329
    .local v1, "requireFoodPreferencesHide":Z
    if-nez v1, :cond_0

    .line 330
    iget-object v5, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mInstructionsLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :cond_0
    iput-boolean v7, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackFromAll:Z

    .line 337
    if-eqz p1, :cond_4

    iget-boolean v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mFirstPass:Z

    if-nez v2, :cond_4

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 339
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/account/OfferData;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    move v2, v4

    .line 330
    goto :goto_0

    :cond_2
    move v4, v3

    .line 331
    goto :goto_1

    .line 341
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->notifyDataSetChanged()V

    .line 344
    .end local v0    # "i":I
    :cond_4
    iget-boolean v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mFirstPass:Z

    if-nez v2, :cond_5

    .line 345
    const-string v2, "All"

    invoke-direct {p0, v2, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackProductOfferOpt(Ljava/lang/String;Z)V

    .line 347
    :cond_5
    return-void
.end method

.method private populateSubscribeToOffers(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "subscribedToOffers"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x0

    const-string v4, "populateSubscribeToOffers"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 288
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04018f

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 290
    .local v3, "subscribeToOffersView":Landroid/view/View;
    const v4, 0x7f110067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    .local v2, "rowTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09073b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    const v4, 0x7f110514

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 294
    .local v1, "offersEnabledSwitch":Landroid/widget/Switch;
    new-instance v4, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mSubscribedToOffers:Z

    .line 310
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 311
    iput-boolean v6, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mFirstPass:Z

    .line 314
    iget-object v4, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mMasterToggleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    return-void
.end method

.method private showDisableDialog(Landroid/widget/CompoundButton;)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v5, 0x0

    const-string v3, "showDisableDialog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v2, Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$5;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    .line 361
    .local v2, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$6;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Landroid/widget/CompoundButton;)V

    .line 369
    .local v1, "negativeClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090530

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 371
    const v3, 0x7f09052f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 372
    const v3, 0x7f09080b

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v3, 0x7f090145

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 376
    return-void
.end method

.method private trackProductOfferOpt(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "optIn"    # Z

    .prologue
    const-string v1, "trackProductOfferOpt"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    iget-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->trackFromAll:Z

    if-eqz v1, :cond_0

    const-string v1, "All"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 462
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "On click"

    .line 463
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 464
    invoke-virtual {v1, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const/16 v3, 0x22

    if-eqz p2, :cond_1

    const-string v1, "Opt-In"

    .line 465
    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->addCustom(ILjava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    const-string v1, "IN"

    .line 467
    :goto_2
    invoke-static {p1, v1}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getProductOfferOpt(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 472
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 474
    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "product_offer_opt"

    .line 475
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "product_category"

    .line 476
    invoke-virtual {v1, v2, p1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "opt_status"

    if-eqz p2, :cond_3

    const-string v1, "IN"

    .line 477
    :goto_3
    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 478
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 474
    invoke-static {v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    goto :goto_0

    .line 464
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_1
    const-string v1, "Opt-Out"

    goto :goto_1

    .line 465
    :cond_2
    const-string v1, "OUT"

    goto :goto_2

    .line 476
    .restart local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    :cond_3
    const-string v1, "OUT"

    goto :goto_3
.end method

.method private updateDisableButtonState()V
    .locals 4

    .prologue
    const-string v1, "updateDisableButtonState"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    .line 485
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/OfferData;

    .line 486
    .local v0, "offerItem":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferData;->getState()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 487
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    .line 492
    .end local v0    # "offerItem":Lcom/mcdonalds/app/account/OfferData;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mDisableButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-boolean v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    if-eqz v1, :cond_2

    const v1, 0x7f090208

    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void

    .line 492
    :cond_2
    const v1, 0x7f0902fe

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    const v0, 0x7f090864

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0906b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.offers.hideOfferCategoryPreferenceSelection"

    .line 158
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 160
    .local v1, "requireFoodPreferencesHide":Z
    if-eqz v1, :cond_0

    .line 161
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :cond_0
    const-string v2, "offers"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 169
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 170
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 171
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPreferredOfferCategories()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    .line 172
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 173
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mIsDisableButton:Z

    .line 178
    :cond_1
    new-instance v2, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersList:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/util/List;)V

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    .line 179
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferencesAdapter:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 182
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    new-instance v3, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$2;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getOfferCategories(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 224
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->setHasOptionsMenu(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
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

    .line 228
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 230
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 231
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 101
    const v2, 0x7f04008b

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f110254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mMasterToggleContainer:Landroid/widget/LinearLayout;

    .line 105
    const v2, 0x7f110255

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x7f110256

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mInstructionsLayout:Landroid/widget/RelativeLayout;

    .line 109
    const v2, 0x7f110253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListView:Landroid/widget/ListView;

    .line 111
    const v2, 0x7f040070

    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    .local v0, "disableLayout":Landroid/widget/LinearLayout;
    const v2, 0x7f1101b8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mDisableButton:Landroid/widget/Button;

    .line 116
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 118
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mDisableButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$1;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const-string v2, "onOptionsItemSelected"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 236
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 281
    :goto_0
    return v5

    .line 240
    :pswitch_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mChangesMade:Z

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 244
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mOffersList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/account/OfferData;

    .line 245
    .local v1, "offerData":Lcom/mcdonalds/app/account/OfferData;
    invoke-virtual {v1}, Lcom/mcdonalds/app/account/OfferData;->getState()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/OfferData;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    .end local v1    # "offerData":Lcom/mcdonalds/app/account/OfferData;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Offer Preference"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 253
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mPreferredOfferCategories:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPreferredOfferCategories(Ljava/util/List;)V

    .line 254
    iget-boolean v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mSubscribedToOffers:Z

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setSubscribedToOffers(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    const v3, 0x7f0901e7

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 259
    iget-object v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v3, Lcom/mcdonalds/app/account/OfferPreferencesFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment$3;-><init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    invoke-virtual {v2, v0, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 272
    .end local v0    # "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
