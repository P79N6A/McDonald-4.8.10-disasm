.class public Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeLoginPreferenceFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;
.implements Ljava/util/Observer;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

.field private mCommunicationsWarning:Landroid/view/View;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mDialog:Landroid/app/AlertDialog;

.field private mNoEmailWarning:Landroid/view/View;

.field private mNoMobileWarning:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "change_login_preference"

    sput-object v0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeLoginPreferenceFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->dismissDialog()V

    return-void
.end method

.method private createDialog()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "createDialog"

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 119
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 122
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04006d

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f110195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0906d7

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    .line 128
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 130
    new-instance v4, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "dismissDialog"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 148
    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mDialog:Landroid/app/AlertDialog;

    throw v0
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 73
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLoginPreference()I

    move-result v1

    .line 74
    .local v1, "selection":I
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailVerified()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileVerified()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 75
    .local v0, "enabled":Z
    :goto_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const/4 v1, 0x2

    .line 78
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelection(I)V

    .line 87
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setEnabled(Z)V

    .line 88
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v4, p0}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelectionListener(Lcom/mcdonalds/app/customer/ChooseMethodView$SelectionListener;)V

    .line 90
    if-eqz v0, :cond_4

    .line 91
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCommunicationsWarning:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    :goto_2
    return-void

    .end local v0    # "enabled":Z
    :cond_1
    move v0, v3

    .line 74
    goto :goto_0

    .line 80
    .restart local v0    # "enabled":Z
    :cond_2
    const/4 v1, 0x1

    .line 81
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelection(I)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->setSelection(I)V

    goto :goto_1

    .line 93
    :cond_4
    if-ne v1, v2, :cond_5

    .line 94
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mNoMobileWarning:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 96
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mNoEmailWarning:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->addObserver(Ljava/util/Observer;)V

    .line 44
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v1, 0x7f040092

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f110268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/customer/ChooseMethodView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mChoosePreference:Lcom/mcdonalds/app/customer/ChooseMethodView;

    .line 61
    const v1, 0x7f11026a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mNoMobileWarning:Landroid/view/View;

    .line 62
    const v1, 0x7f110263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mNoEmailWarning:Landroid/view/View;

    .line 63
    const v1, 0x7f110269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCommunicationsWarning:Landroid/view/View;

    .line 65
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 51
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/util/LoginManager;->deleteObserver(Ljava/util/Observer;)V

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->dismissDialog()V

    .line 53
    return-void
.end method

.method public onMethodSelected(I)V
    .locals 4
    .param p1, "selection"    # I

    .prologue
    const-string v0, "onMethodSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLoginPreference(I)V

    .line 107
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->updateProfile()V

    .line 108
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->createDialog()V

    .line 109
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const-string v0, "update"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeLoginPreferenceFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 114
    return-void
.end method
