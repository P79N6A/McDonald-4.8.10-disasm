.class public Lcom/mcdonalds/app/tutorial/TutorialFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "TutorialFragment.java"


# instance fields
.field private fromSideMenu:Z

.field private mAnalyticsTitle:Ljava/lang/String;

.field mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

.field private nextButton:Landroid/widget/Button;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 231
    new-instance v0, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment$5;-><init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->nextClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getStartedClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->signInClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-boolean v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->fromSideMenu:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/tutorial/TutorialFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/tutorial/TutorialFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->nextButton:Landroid/widget/Button;

    return-object v0
.end method

.method private getStartedClicked()V
    .locals 2

    .prologue
    const-string v0, "getStartedClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get Started"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startMainActivity()V

    .line 212
    return-void
.end method

.method private nextClicked()V
    .locals 5

    .prologue
    const-string v2, "nextClicked"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v2, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 201
    .local v0, "currentPosition":I
    iget-object v2, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 202
    .local v1, "lastItem":I
    if-ge v0, v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startMainActivity()V

    goto :goto_0
.end method

.method private setupStartupButtons(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const-string v3, "setupStartupButtons"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const v3, 0x7f11041c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 172
    .local v1, "getStartedButton":Landroid/widget/Button;
    const v3, 0x7f11041b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 173
    .local v2, "signInButton":Landroid/widget/Button;
    new-instance v3, Lcom/mcdonalds/app/tutorial/TutorialFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment$3;-><init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    new-instance v3, Lcom/mcdonalds/app/tutorial/TutorialFragment$4;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment$4;-><init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 192
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public static shouldShowTutorial(Lcom/mcdonalds/sdk/services/configuration/Configuration;Lcom/mcdonalds/sdk/services/data/LocalDataManager;)Z
    .locals 11
    .param p0, "config"    # Lcom/mcdonalds/sdk/services/configuration/Configuration;
    .param p1, "localDataManager"    # Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "com.mcdonalds.app.tutorial.TutorialFragment"

    const-string v9, "shouldShowTutorial"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v6

    aput-object p1, v10, v5

    invoke-static {v7, v8, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "result":Z
    const-string v7, "interface.tutorial.show"

    invoke-virtual {p0, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 260
    .local v2, "showTutorial":Z
    if-eqz v2, :cond_0

    .line 261
    const-string v7, "interface.tutorial.firstLaunchOnly"

    invoke-virtual {p0, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    .line 262
    .local v1, "showFirstLaunchOnly":Z
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getTutorialLastShownVersionName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "tutorialLastViewedVersion":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    .line 265
    const/4 v0, 0x1

    .line 273
    .end local v1    # "showFirstLaunchOnly":Z
    .end local v3    # "tutorialLastViewedVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 267
    .restart local v1    # "showFirstLaunchOnly":Z
    .restart local v3    # "tutorialLastViewedVersion":Ljava/lang/String;
    :cond_1
    const-string v7, "4.8.10"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 269
    .local v4, "versionSame":Z
    if-nez v4, :cond_2

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1
.end method

.method private signInClicked()V
    .locals 3

    .prologue
    const-string v1, "signInClicked"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sign In"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private startMainActivity()V
    .locals 3

    .prologue
    const-string v1, "startMainActivity"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    if-nez v1, :cond_0

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startActivity(Landroid/content/Intent;)V

    .line 229
    :goto_0
    return-void

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mAnalyticsTitle:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "viewMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "viewMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sideMenu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->fromSideMenu:Z

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v1

    const-string v2, "NOTIFICATION_FINISH_TUTORIAL"

    new-instance v3, Lcom/mcdonalds/app/tutorial/TutorialFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment$1;-><init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->addObserver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0
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

    .line 95
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 96
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 101
    const/4 v4, 0x0

    .line 103
    .local v4, "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 104
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v7, "tutorial"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 105
    const-string v7, "tutorial"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "tutorial_attr":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 107
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 111
    .end local v6    # "tutorial_attr":Ljava/lang/String;
    .restart local v4    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    :cond_0
    if-nez v4, :cond_1

    .line 112
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "interface.tutorial.screens"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    check-cast v4, Ljava/util/ArrayList;

    .line 117
    .restart local v4    # "screens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gson/internal/LinkedTreeMap;>;"
    :cond_1
    if-nez v4, :cond_2

    .line 118
    const-class v7, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->startActivity(Ljava/lang/Class;)V

    .line 119
    const/4 v3, 0x0

    .line 164
    :goto_0
    return-object v3

    .line 123
    :cond_2
    const v7, 0x7f0908a9

    invoke-virtual {p0, v7}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mAnalyticsTitle:Ljava/lang/String;

    .line 126
    const v7, 0x7f040129

    invoke-virtual {p1, v7, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, "rootView":Landroid/view/View;
    const v7, 0x7f11041a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 130
    iget-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v9, v10, v4}, Lcom/mcdonalds/app/tutorial/TutorialPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    const v7, 0x7f110202

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/PagerIndicator;

    .line 133
    .local v2, "pagerIndicator":Lcom/mcdonalds/app/widget/PagerIndicator;
    iget-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v7}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 134
    iget-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v8, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v7

    iput-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->mParent:Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 138
    iget-boolean v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->fromSideMenu:Z

    if-eqz v7, :cond_3

    .line 140
    const v7, 0x7f11041d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->nextButton:Landroid/widget/Button;

    .line 141
    iget-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    const v7, 0x7f1103db

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 144
    .local v5, "startupButtonContainer":Landroid/view/View;
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v7, p0, Lcom/mcdonalds/app/tutorial/TutorialFragment;->nextButton:Landroid/widget/Button;

    new-instance v8, Lcom/mcdonalds/app/tutorial/TutorialFragment$2;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/tutorial/TutorialFragment$2;-><init>(Lcom/mcdonalds/app/tutorial/TutorialFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .end local v5    # "startupButtonContainer":Landroid/view/View;
    :goto_1
    :try_start_0
    const-string v1, "4.8.10"

    .line 159
    .local v1, "currentVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setTutorialLastShownVersionName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1    # "currentVersionName":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0

    .line 154
    :cond_3
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/tutorial/TutorialFragment;->setupStartupButtons(Landroid/view/View;)V

    goto :goto_1
.end method
