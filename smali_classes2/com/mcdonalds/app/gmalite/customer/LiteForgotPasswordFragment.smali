.class public Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteForgotPasswordFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mEmailAddressEditText:Landroid/widget/EditText;

.field private mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

.field private mResendInstructions:Landroid/widget/TextView;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 138
    new-instance v0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$4;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteForgotPasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteForgotPasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteForgotPasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->sendForgotPasswordEmail()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.customer.LiteForgotPasswordFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mResendInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method private sendForgotPasswordEmail()V
    .locals 3

    .prologue
    const-string v0, "sendForgotPasswordEmail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Continue"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    .line 182
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f090494

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$5;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->resetPassword(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const v0, 0x7f09087b

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const v0, 0x7f0904f1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f0904f1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->setHasOptionsMenu(Z)V

    .line 69
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

    .line 176
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v2, 0x7f0400cb

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1102c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    .line 78
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    const-string v3, "Submit"

    const/16 v4, 0x42

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    const v2, 0x7f1102c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    .line 111
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 127
    const v2, 0x7f1102c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mResendInstructions:Landroid/widget/TextView;

    .line 129
    const v2, 0x7f1102be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, "customerSupportLink":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mOnClickCustomerSupport:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 167
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "email":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 60
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 61
    return-void
.end method
