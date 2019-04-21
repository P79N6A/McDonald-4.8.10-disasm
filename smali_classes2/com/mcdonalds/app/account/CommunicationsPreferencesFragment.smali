.class public Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "CommunicationsPreferencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$ViewHolder;,
        Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;,
        Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

.field private mChangesMade:Z

.field mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDisplayNamesMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailEnabled:Ljava/lang/Boolean;

.field private mListContainer:Landroid/widget/LinearLayout;

.field private mListview:Landroid/widget/ListView;

.field private mMasterToggleContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mChangesMade:Z

    .line 59
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.CommunicationsPreferencesFragment"

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

    .line 40
    iput-boolean p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mChangesMade:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)Landroid/widget/LinearLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.CommunicationsPreferencesFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.CommunicationsPreferencesFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mEmailEnabled:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)Ljava/util/TreeMap;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.CommunicationsPreferencesFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method private shouldShowPunchcardOffers()Z
    .locals 3

    .prologue
    const-string v1, "shouldShowPunchcardOffers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.availableCommunicationPreferences.EmailNotificationPreferences_PunchcardOffers"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .local v0, "shouldShowPunchcardOffers":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const v0, 0x7f09085c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0902fa

    const v10, 0x7f0902f6

    const/4 v12, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const v7, 0x7f0901e7

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 101
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 103
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 104
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNotificationPreferences()Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 106
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    .line 107
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    .line 108
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 109
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesLimitedTimeOffers()Z

    move-result v10

    const-string v11, "Limited time offers"

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/String;ZLjava/lang/String;)V

    .line 107
    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->shouldShowPunchcardOffers()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    .line 114
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    .line 115
    invoke-virtual {v10}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesPunchcardOffers()Z

    move-result v10

    const-string v11, "Punchcard offers"

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/lang/String;ZLjava/lang/String;)V

    .line 113
    invoke-virtual {v6, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->getEmailNotificationPreferencesEnabled()Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mEmailEnabled:Ljava/lang/Boolean;

    .line 123
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 125
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04018f

    iget-object v7, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mMasterToggleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 127
    .local v2, "emailEnabledView":Landroid/view/View;
    const v6, 0x7f110067

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 128
    .local v5, "rowTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902f4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v6, 0x7f110514

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 131
    .local v1, "emailEnabledSwitch":Landroid/widget/Switch;
    new-instance v6, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$1;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)V

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mEmailEnabled:Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mEmailEnabled:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 148
    :cond_1
    invoke-virtual {v1, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 155
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mMasterToggleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    new-instance v4, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;

    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    invoke-direct {v4, p0, v6}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;Ljava/util/TreeMap;)V

    .line 159
    .local v4, "mAdapter":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mListview:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 162
    return-void

    .line 150
    .end local v4    # "mAdapter":Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$PreferencesAdapter;
    :cond_2
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 151
    iget-object v6, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->setHasOptionsMenu(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
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

    .line 166
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 168
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 169
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v2, 0x7f04008b

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "rootView":Landroid/view/View;
    const v2, 0x7f110254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mMasterToggleContainer:Landroid/widget/LinearLayout;

    .line 83
    const v2, 0x7f110255

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mListContainer:Landroid/widget/LinearLayout;

    .line 85
    const v2, 0x7f110253

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mListview:Landroid/widget/ListView;

    .line 88
    const v2, 0x7f110257

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "instructions_text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0902f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x1

    const-string v1, "onOptionsItemSelected"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 218
    :goto_0
    return v5

    .line 178
    :pswitch_0
    iget-boolean v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mChangesMade:Z

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Communications"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mEmailEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesEnabled(Ljava/lang/Boolean;)V

    .line 183
    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    iget-boolean v1, v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->state:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesLimitedTimeOffers(Ljava/lang/Boolean;)V

    .line 185
    invoke-direct {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->shouldShowPunchcardOffers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mDisplayNamesMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0902fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;

    iget-boolean v1, v1, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$NotificationEntry;->state:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;->setEmailNotificationPreferencesPunchcardOffers(Ljava/lang/Boolean;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 191
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    const v2, 0x7f0901e7

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 194
    iget-object v1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v2, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->mAllPreferences:Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    new-instance v3, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;-><init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setNotificationPreferences(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 209
    .end local v0    # "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
