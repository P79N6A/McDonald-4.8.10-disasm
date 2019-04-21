.class public Lcom/mcdonalds/app/customer/LostPasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LostPasswordFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mEmailAddressEditText:Landroid/widget/EditText;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.LostPasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.LostPasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.LostPasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->sendLostPasswordEmail()V

    return-void
.end method

.method private sendLostPasswordEmail()V
    .locals 3

    .prologue
    const-string v0, "sendLostPasswordEmail"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    .line 180
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    const v0, 0x7f090325

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Email Enter"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901fe

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$6;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

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

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const v1, 0x7f090503

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->setHasOptionsMenu(Z)V

    .line 70
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Forgot Password Form"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setFormName(Ljava/lang/String;)V

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

    .line 152
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 154
    const v0, 0x7f120003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v2, 0x7f0400d2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f1102c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    .line 80
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    const-string v3, "Submit"

    const/16 v4, 0x42

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 81
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mcdonalds/app/customer/LostPasswordFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$1;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 88
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 117
    const v2, 0x7f1102c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    .line 118
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mSubmitButton:Landroid/widget/Button;

    new-instance v3, Lcom/mcdonalds/app/customer/LostPasswordFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$3;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mEmailAddressEditText:Landroid/widget/EditText;

    new-instance v3, Lcom/mcdonalds/app/customer/LostPasswordFragment$4;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$4;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 134
    const v2, 0x7f1103bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "registerButton":Landroid/view/View;
    new-instance v2, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment$5;-><init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    return-object v1
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

    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_0
    return v3

    .line 163
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-class v0, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x7f110090
        :pswitch_0
    .end packed-switch
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

    iput-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 61
    return-void
.end method
