.class public Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "LiteChangeUserNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mEmailAsUsername:Z

.field private mFirstName:Landroid/widget/EditText;

.field private mLastName:Landroid/widget/EditText;

.field private mSaveButton:Landroid/view/View;

.field private nameBlockedCharactersFilter:Landroid/text/InputFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 133
    new-instance v0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$2;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeUserNameFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->onSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeUserNameFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeUserNameFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.gmalite.account.LiteChangeUserNameFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    return-object v0
.end method

.method private onSave()V
    .locals 8

    .prologue
    const-string v6, "onSave"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "originalFirstName":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, "originalLastName":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "originalEmail":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "firstName":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "lastName":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;-><init>()V

    .line 159
    .local v2, "newCustomerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Save"

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v6

    const v7, 0x7f09048e

    invoke-static {v6, v7}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 166
    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    new-instance v7, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$3;

    invoke-direct {v7, p0, v0, v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$3;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 191
    return-void
.end method

.method private validateFields()Z
    .locals 3

    .prologue
    const/16 v2, 0x23

    const-string v0, "validateFields"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    .line 195
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 196
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 197
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const-string v0, "afterTextChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->validateFields()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "beforeTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const v0, 0x7f090861

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const v0, 0x7f0904ec

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 98
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 100
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 102
    .local v0, "nameLengthFilter":Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 105
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 109
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iput-boolean v4, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mEmailAsUsername:Z

    .line 112
    :cond_0
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

    .line 116
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v1, 0x7f0400c8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f110273

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    .line 74
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v1, 0x7f110274

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 77
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/model/Register;->isSingleFieldName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 83
    :cond_0
    return-object v0
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

    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110545

    if-ne v0, v1, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->onSave()V

    .line 127
    :cond_0
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method
