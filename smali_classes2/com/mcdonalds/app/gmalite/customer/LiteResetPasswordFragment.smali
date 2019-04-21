.class public Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteResetPasswordFragment.java"


# instance fields
.field private mAuthorizationCode:Ljava/lang/String;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mNewPassword:Landroid/widget/EditText;

.field private mNewPasswordConfirm:Landroid/widget/EditText;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private mSubmitButton:Landroid/widget/Button;

.field private passwordWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 103
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->passwordWatcher:Landroid/text/TextWatcher;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteResetPasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->changePassword()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteResetPasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteResetPasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteResetPasswordFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method private changePassword()V
    .locals 4

    .prologue
    const-string v0, "changePassword"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090497

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mAuthorizationCode:Ljava/lang/String;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 169
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const v0, 0x7f09087c

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const v0, 0x7f0904f5

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0904f5

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->setHasOptionsMenu(Z)V

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

    .line 141
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    const v2, 0x7f0400cd

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1102ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPassword:Landroid/widget/EditText;

    .line 81
    const v2, 0x7f1102cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    .line 82
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mNewPasswordConfirm:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    const v2, 0x7f1102cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f1102be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object v1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "Uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 135
    .local v1, "data":Landroid/net/Uri;
    const-string v3, "code"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "uriCode":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    .end local v2    # "uriCode":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mAuthorizationCode:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 63
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 64
    return-void
.end method
