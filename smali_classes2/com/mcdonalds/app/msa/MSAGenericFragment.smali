.class public Lcom/mcdonalds/app/msa/MSAGenericFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MSAGenericFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/msa/MSAGenericFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAGenericFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAGenericFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->proceedToHomePage()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MSAGenericFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MSAGenericFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MSAGenericFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->startHomepage()V

    return-void
.end method

.method private proceedToHomePage()V
    .locals 13

    .prologue
    const v12, 0x7f0901ff

    const/4 v7, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x1

    const-string v9, "proceedToHomePage"

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    .line 67
    .local v2, "localDataManager":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLogin()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "prefSavedLogin":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedLoginPass()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "prefSavedLoginPass":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPrefSavedSocialNetworkId()I

    move-result v6

    .line 71
    .local v6, "prefSavedSocialID":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eq v6, v11, :cond_2

    .line 73
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/McDonaldsApplication;->getInstance()Lcom/mcdonalds/app/McDonaldsApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mcdonalds/app/McDonaldsApplication;->isColdStart()Z

    move-result v9

    if-eqz v9, :cond_2

    move v0, v8

    .line 75
    .local v0, "autoLogin":Z
    :goto_0
    if-eq v6, v11, :cond_1

    move v7, v8

    .line 76
    .local v7, "useSocial":Z
    :cond_1
    const-string v9, "customer"

    invoke-static {v9}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 78
    .local v1, "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v0, :cond_5

    .line 79
    if-eqz v7, :cond_4

    .line 80
    const/4 v9, 0x3

    if-ne v6, v9, :cond_3

    .line 81
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 82
    .local v3, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v8}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setAllowSocialLoginWithoutEmail(Z)V

    .line 84
    invoke-virtual {v3, v8}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 85
    invoke-virtual {v3, v6}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 86
    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 90
    new-instance v8, Lcom/mcdonalds/app/msa/MSAGenericFragment$2;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment$2;-><init>(Lcom/mcdonalds/app/msa/MSAGenericFragment;)V

    invoke-virtual {v1, v3, v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 124
    .end local v3    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :goto_1
    return-void

    .end local v0    # "autoLogin":Z
    .end local v1    # "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .end local v7    # "useSocial":Z
    :cond_2
    move v0, v7

    .line 73
    goto :goto_0

    .line 100
    .restart local v0    # "autoLogin":Z
    .restart local v1    # "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .restart local v7    # "useSocial":Z
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->startHomepage()V

    goto :goto_1

    .line 103
    :cond_4
    new-instance v3, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 105
    .restart local v3    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3, v5}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 109
    new-instance v8, Lcom/mcdonalds/app/msa/MSAGenericFragment$3;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment$3;-><init>(Lcom/mcdonalds/app/msa/MSAGenericFragment;)V

    invoke-virtual {v1, v3, v8}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_1

    .line 122
    .end local v3    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_5
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->startHomepage()V

    goto :goto_1
.end method

.method private startHomepage()V
    .locals 4

    .prologue
    const-string v2, "startHomepage"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "fragment"

    const-string v3, "dashboard"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 133
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/msa/MSAGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const v1, 0x7f0400de

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f110306

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/msa/MSAGenericFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/msa/MSAGenericFragment$1;-><init>(Lcom/mcdonalds/app/msa/MSAGenericFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-object v0
.end method
