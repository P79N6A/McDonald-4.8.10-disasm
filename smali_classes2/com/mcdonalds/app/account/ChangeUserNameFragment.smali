.class public Lcom/mcdonalds/app/account/ChangeUserNameFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeUserNameFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private OriginalLastName:Ljava/lang/String;

.field private OriginalName:Ljava/lang/String;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mEmailAsUsername:Z

.field private mFirstName:Landroid/widget/EditText;

.field private mLastName:Landroid/widget/EditText;

.field private final mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mSaveButton:Landroid/view/View;

.field private nameBlockedCharactersFilter:Landroid/text/InputFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 147
    new-instance v0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$3;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    .line 223
    new-instance v0, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$5;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeUserNameFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->onSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeUserNameFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeUserNameFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeUserNameFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeUserNameFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeUserNameFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    return-object v0
.end method

.method private onSave()V
    .locals 8

    .prologue
    const-string v5, "onSave"

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "originalFirstName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "originalLastName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "originalEmail":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "firstName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "lastName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setFirstName(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setLastName(Ljava/lang/String;)V

    .line 176
    iget-boolean v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mEmailAsUsername:Z

    if-eqz v5, :cond_0

    const-string v5, "*@*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Name"

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    const v6, 0x7f0901ee

    invoke-static {v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 184
    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v6, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v7, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;

    invoke-direct {v7, p0, v3, v4, v2}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$4;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 221
    return-void
.end method

.method private validateFields()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v4, 0x23

    const-string v2, "validateFields"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/model/Register;->isSingleFieldName()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    .line 238
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    .line 241
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v2, v4, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 242
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 243
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    const-string v0, "afterTextChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->OriginalName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->OriginalLastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->validateFields()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
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

    .line 250
    return-void
.end method

.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const v0, 0x7f090861

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const v0, 0x7f0907cf

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->getString(I)Ljava/lang/String;

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

    .line 109
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 112
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 114
    new-instance v0, Landroid/text/InputFilter$LengthFilter;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 116
    .local v0, "nameLengthFilter":Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 119
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->nameBlockedCharactersFilter:Landroid/text/InputFilter;

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iput-boolean v4, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mEmailAsUsername:Z

    .line 126
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

    .line 130
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 131
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 64
    const v2, 0x7f040095

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f110275

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "cancel":Landroid/view/View;
    new-instance v2, Lcom/mcdonalds/app/account/ChangeUserNameFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v2, 0x7f110262

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mSaveButton:Landroid/view/View;

    new-instance v3, Lcom/mcdonalds/app/account/ChangeUserNameFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeUserNameFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f110273

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    .line 85
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mFirstName:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 87
    const v2, 0x7f110274

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    .line 88
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/util/LoginManager;->getRegisterSettings()Lcom/mcdonalds/app/model/Register;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/model/Register;->isSingleFieldName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    :cond_0
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 95
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 97
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->OriginalName:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->OriginalLastName:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->mLastName:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 104
    :cond_1
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

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f110545

    if-ne v0, v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeUserNameFragment;->onSave()V

    .line 141
    :cond_0
    return v3
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

    .line 255
    return-void
.end method
