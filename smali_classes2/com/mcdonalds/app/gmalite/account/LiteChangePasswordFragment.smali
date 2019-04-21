.class public Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteChangePasswordFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/widget/ValidationListener$Callback;


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mNewPassword:Landroid/widget/EditText;

.field private mNewPasswordChanged:Landroid/text/TextWatcher;

.field private mNewPasswordConfirm:Landroid/widget/EditText;

.field private mNewPasswordFieldsValidated:Z

.field private mOldPasswordValidated:Z

.field private final mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mOriginal:Landroid/widget/EditText;

.field private mPasswordValidation:Lcom/mcdonalds/app/widget/ValidationListener;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 101
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordChanged:Landroid/text/TextWatcher;

    .line 223
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->onSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordFieldsValidated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

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

    .line 33
    iput-boolean p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordFieldsValidated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOldPasswordValidated:Z

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangePasswordFragment"

    const-string v2, "access$700"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->persistPassword(Ljava/lang/String;)V

    return-void
.end method

.method private onSave()V
    .locals 5

    .prologue
    const-string v3, "onSave"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->validateNewPassword()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f090490

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 193
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 194
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v3, :cond_2

    .line 195
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 198
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "oldPassword":Ljava/lang/String;
    new-instance v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 201
    .local v1, "newProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPasswordChangeRequired(Z)V

    .line 202
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewPassword(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Save"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v3, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V

    invoke-virtual {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private persistPassword(Ljava/lang/String;)V
    .locals 3
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    const-string v0, "persistPassword"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private validateNewPassword()Z
    .locals 2

    .prologue
    const-string v0, "validateNewPassword"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOldPasswordValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordFieldsValidated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const v0, 0x7f090862

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const v0, 0x7f0904ee

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 70
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 71
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

    .line 154
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 156
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 157
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 75
    const v1, 0x7f0400c7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f11026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    .line 80
    const v1, 0x7f11026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPassword:Landroid/widget/EditText;

    .line 81
    const v1, 0x7f110270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    .line 83
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    new-instance v1, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3, v3, v3}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mPasswordValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mPasswordValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 93
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mPasswordValidation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordChanged:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordChanged:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    return-object v0
.end method

.method public onFieldValidationStateChanged(Z)V
    .locals 5
    .param p1, "isValidated"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onFieldValidationStateChanged"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iput-boolean p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOldPasswordValidated:Z

    .line 239
    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mOldPasswordValidated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mNewPasswordFieldsValidated:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onOptionsItemSelected"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return v3

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->onSave()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
