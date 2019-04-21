.class public Lcom/mcdonalds/app/account/ChangeEmailFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangeEmailFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mNewEmailEditText:Landroid/widget/EditText;

.field private mNewEmailVerifyEditText:Landroid/widget/EditText;

.field private mOriginalEmail:Ljava/lang/String;

.field private mPassword:Landroid/widget/EditText;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonTextWatcher:Landroid/text/TextWatcher;

.field private mUsernameEqualsEmail:Z

.field private mValidations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/app/widget/ValidationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/mcdonalds/app/account/ChangeEmailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 195
    new-instance v0, Lcom/mcdonalds/app/account/ChangeEmailFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangeEmailFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButtonTextWatcher:Landroid/text/TextWatcher;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->validateData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ChangeEmailFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->onSave()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ChangeEmailFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->shouldEnableSubmitButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ChangeEmailFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangeEmailFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangeEmailFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method private addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 6
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "addValidation"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 149
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v1

    return-object v1
.end method

.method private addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 3
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v0, "addValidation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    return-object p1
.end method

.method private configure()V
    .locals 2

    .prologue
    const-string v0, "configure"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    .line 142
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->setMailValidation()V

    .line 143
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->setConfirmEmailValidation()V

    .line 144
    return-void
.end method

.method private onSave()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "onSave"

    invoke-static {p0, v4, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "emailUpdate":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "password":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mOriginalEmail:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    const v5, 0x7f0902f2

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 234
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v4

    const-string v5, "Email address invalid"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Email"

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    const v5, 0x7f0901ee

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 244
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 245
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 246
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "existingEmail":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "existingUserName":Ljava/lang/String;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mUsernameEqualsEmail:Z

    .line 254
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setEmailAddress(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 262
    iget-boolean v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mUsernameEqualsEmail:Z

    if-eqz v4, :cond_3

    .line 263
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setNewUserName(Ljava/lang/String;)V

    .line 266
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    new-instance v6, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/mcdonalds/app/account/ChangeEmailFragment$3;-><init>(Lcom/mcdonalds/app/account/ChangeEmailFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->updateCustomerProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private setConfirmEmailValidation()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const-string v1, "setConfirmEmailValidation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailVerifyEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V

    .line 192
    .local v0, "confirmEmailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 193
    return-void
.end method

.method private setMailValidation()V
    .locals 3

    .prologue
    const-string v1, "setMailValidation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v0

    .line 163
    .local v0, "mailValidation":Lcom/mcdonalds/app/widget/ValidationListener;
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method private shouldEnableSubmitButton()V
    .locals 2

    .prologue
    const-string v0, "shouldEnableSubmitButton"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    .line 214
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailVerifyEditText:Landroid/widget/EditText;

    .line 215
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateData()Z
    .locals 5

    .prologue
    const-string v3, "validateData"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 170
    .local v1, "key":I
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 172
    .local v2, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 174
    const/4 v3, 0x0

    .line 178
    .end local v1    # "key":I
    .end local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :goto_1
    return v3

    .line 167
    .restart local v1    # "key":I
    .restart local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "key":I
    .end local v2    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const v0, 0x7f09085f

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    const v0, 0x7f0907ce

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/util/LoginManager;->getProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    .line 76
    .local v0, "customerProfile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mOriginalEmail:Ljava/lang/String;

    .line 77
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

    .line 118
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 81
    const v1, 0x7f040096

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f11026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mPassword:Landroid/widget/EditText;

    .line 85
    const v1, 0x7f11026f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    .line 86
    const v1, 0x7f110270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailVerifyEditText:Landroid/widget/EditText;

    .line 88
    const v1, 0x7f110262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButton:Landroid/widget/Button;

    .line 89
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mPassword:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButtonTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButtonTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailVerifyEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButtonTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/mcdonalds/app/account/ChangeEmailFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangeEmailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->configure()V

    .line 106
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.disableInteraction"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 108
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangeEmailFragment;->mNewEmailVerifyEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->disableInteraction(Landroid/widget/TextView;)V

    .line 111
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

    nop

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return v3

    .line 128
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangeEmailFragment;->onSave()V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
