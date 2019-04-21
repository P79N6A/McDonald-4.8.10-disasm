.class public Lcom/mcdonalds/app/account/ChangePasswordFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "ChangePasswordFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private final TIME_DISMISS_ALERT_VIEW_KEY:Ljava/lang/String;

.field private mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mNewPasswordEditText:Landroid/widget/EditText;

.field private final mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

.field private mOriginal:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private final mPasswordInputFilter:Landroid/text/InputFilter;

.field private mSaveButton:Landroid/widget/Button;

.field private mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

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

.field private mVerifyPasswordEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 47
    const-string v0, "timeDismissAlertView"

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->TIME_DISMISS_ALERT_VIEW_KEY:Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    .line 266
    new-instance v0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    .line 281
    new-instance v0, Lcom/mcdonalds/app/account/ChangePasswordFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment$5;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    .line 318
    new-instance v0, Lcom/mcdonalds/app/account/ChangePasswordFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment$6;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->onSave()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/ChangePasswordFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->persistPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOnClickDialog:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->validateData()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.ChangePasswordFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addPasswordValidation()V
    .locals 6

    .prologue
    const-string v1, "addPasswordValidation"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;IZ)V

    .line 121
    .local v0, "passwordValidationListener":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 122
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    return-void
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

    .line 296
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener;

    const/4 v3, 0x4

    if-eq p2, v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 303
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;

    move-result-object v1

    return-object v1
.end method

.method private addValidation(Lcom/mcdonalds/app/widget/ValidationListener;)Lcom/mcdonalds/app/widget/ValidationListener;
    .locals 4
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const-string v1, "addValidation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v0

    .line 309
    .local v0, "validationEditText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 311
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidationCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-virtual {p1, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V

    .line 313
    iget-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    return-object p1
.end method

.method private onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 3
    .param p1, "validation"    # Lcom/mcdonalds/app/widget/ValidationListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "onDoneKeyPressed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    new-instance v0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V

    return-object v0
.end method

.method private onSave()V
    .locals 7

    .prologue
    const v5, 0x7f090637

    const/4 v6, 0x0

    const-string v3, "onSave"

    invoke-static {p0, v3, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    .line 164
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09019f

    .line 165
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-static {v3, v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 169
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "Password doesn\'t match existing"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    .line 178
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09057a

    .line 179
    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v3, v4, v5, v6}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 183
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    const-string v4, "New password must be different than previous password"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "newPassword":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    const v4, 0x7f0901ed

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 197
    const-string v3, "customer"

    invoke-static {v3}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 198
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-nez v3, :cond_3

    .line 199
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 202
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 204
    .local v2, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 205
    iget-object v3, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setNewPassword(Ljava/lang/String;)V

    .line 207
    new-instance v3, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment$2;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->authenticate(Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0

    .line 241
    .end local v2    # "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Password"

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v3, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/mcdonalds/app/account/ChangePasswordFragment$3;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->changePassword(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0
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

    .line 277
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->setPassword(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPrefSavedLoginPass(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method private validateData()V
    .locals 6

    .prologue
    const-string v4, "validateData"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 331
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 332
    .local v1, "key":I
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mValidations:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 334
    .local v3, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 340
    .end local v1    # "key":I
    .end local v3    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :goto_1
    return-void

    .line 329
    .restart local v1    # "key":I
    .restart local v3    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    .end local v1    # "key":I
    .end local v3    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const v0, 0x7f090862

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const v0, 0x7f0907d0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 78
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mCustomerProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .line 79
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

    .line 132
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 134
    const v0, 0x7f120014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    const v4, 0x7f040094

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f11026e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    .line 87
    const v4, 0x7f11026f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    .line 88
    const v4, 0x7f110270

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    .line 89
    const v4, 0x7f110271

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mPasswordErrorText:Landroid/widget/TextView;

    .line 91
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-direct {p0, v4, v6}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->addValidation(Landroid/widget/EditText;I)Lcom/mcdonalds/app/widget/ValidationListener;

    .line 92
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->addPasswordValidation()V

    .line 94
    new-array v2, v6, [Landroid/text/InputFilter;

    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mPasswordInputFilter:Landroid/text/InputFilter;

    aput-object v4, v2, v5

    .line 95
    .local v2, "passwordFilters":[Landroid/text/InputFilter;
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mOriginal:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 96
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mNewPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mVerifyPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 99
    const v4, 0x7f110262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    .line 100
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/account/ChangePasswordFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment$1;-><init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v4, 0x7f110272

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, "mPasswordDescription":Landroid/widget/TextView;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getMarket()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "marketId":Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    const v4, 0x7f09060f

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :cond_0
    return-object v3
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

    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return v3

    .line 144
    :pswitch_0
    invoke-direct {p0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->onSave()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x7f110545
        :pswitch_0
    .end packed-switch
.end method
