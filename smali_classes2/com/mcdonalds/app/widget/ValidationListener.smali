.class public Lcom/mcdonalds/app/widget/ValidationListener;
.super Ljava/lang/Object;
.source "ValidationListener.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;,
        Lcom/mcdonalds/app/widget/ValidationListener$Callback;
    }
.end annotation


# instance fields
.field private countryCode:Ljava/lang/String;

.field private mAlertPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

.field private mEmptyErrorMessage:Ljava/lang/String;

.field private mErrorDisplay:Landroid/widget/TextView;

.field private mErrorMessage:Ljava/lang/String;

.field private mHasImage:Z

.field private mHasToMatch:Z

.field private mLinkedViews:Z

.field private mMatchingTextfield:Landroid/widget/EditText;

.field private mMinimumLength:I

.field private mPhoneCountryCodeDeleteListener:Landroid/view/View$OnKeyListener;

.field private mRegex:Ljava/lang/String;

.field private mRequired:Z

.field private mShouldDeleteCountryCode:Z

.field private mTempString:Ljava/lang/CharSequence;

.field private mTextField:Landroid/widget/EditText;

.field private mType:I

.field private mUpdateListener:Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;

.field private mValidated:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;IIZZ)V
    .locals 0
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "type"    # I
    .param p3, "minimumLength"    # I
    .param p4, "hasImage"    # Z
    .param p5, "required"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 104
    iput p3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMinimumLength:I

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;IZZ)V
    .locals 3
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "type"    # I
    .param p3, "hasImage"    # Z
    .param p4, "required"    # Z

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener$1;-><init>(Lcom/mcdonalds/app/widget/ValidationListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mPhoneCountryCodeDeleteListener:Landroid/view/View$OnKeyListener;

    .line 563
    new-instance v0, Lcom/mcdonalds/app/widget/ValidationListener$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/widget/ValidationListener$2;-><init>(Lcom/mcdonalds/app/widget/ValidationListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mAlertPositiveClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    .line 69
    iput p2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    .line 71
    iget v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    instance-of v0, v0, Lcom/mcdonalds/app/widget/EditTextPhone;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mPhoneCountryCodeDeleteListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    check-cast v0, Lcom/mcdonalds/app/widget/EditTextPhone;

    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/EditTextPhone;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTempString:Ljava/lang/CharSequence;

    .line 76
    :cond_0
    iput-boolean p3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mHasImage:Z

    .line 77
    iput-boolean p4, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mRequired:Z

    .line 78
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->validate(Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;IZ)V
    .locals 1
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "matching"    # Landroid/widget/EditText;
    .param p3, "type"    # I
    .param p4, "hasImage"    # Z

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 88
    iput-object p2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;IZZZ)V
    .locals 1
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "matching"    # Landroid/widget/EditText;
    .param p3, "type"    # I
    .param p4, "hasImage"    # Z
    .param p5, "hasToMatch"    # Z
    .param p6, "isLinkedViews"    # Z

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 114
    iput-object p2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    .line 115
    iput-boolean p5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mHasToMatch:Z

    .line 116
    iput-boolean p6, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mLinkedViews:Z

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;IZ)V
    .locals 1
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "matching"    # Landroid/widget/EditText;
    .param p3, "errorDisplay"    # Landroid/widget/TextView;
    .param p4, "type"    # I
    .param p5, "hasImage"    # Z

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, p4, p5, v0}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 98
    iput-object p3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    .line 99
    iput-object p2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "field"    # Landroid/widget/EditText;
    .param p2, "regex"    # Ljava/lang/String;
    .param p3, "hasImage"    # Z
    .param p4, "required"    # Z

    .prologue
    .line 120
    const/16 v0, 0x9

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/mcdonalds/app/widget/ValidationListener;-><init>(Landroid/widget/EditText;IZZ)V

    .line 121
    iput-object p2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mRegex:Ljava/lang/String;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.ValidationListener"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/widget/ValidationListener;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.ValidationListener"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/widget/ValidationListener;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/widget/ValidationListener;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.ValidationListener"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    return p1
.end method

.method private changeValidationState(Z)V
    .locals 4
    .param p1, "validation"    # Z

    .prologue
    const-string v0, "changeValidationState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    if-eq v0, p1, :cond_0

    .line 572
    iput-boolean p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    .line 573
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/widget/ValidationListener$Callback;->onFieldValidationStateChanged(Z)V

    .line 577
    :cond_0
    return-void
.end method

.method private getText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # Landroid/widget/EditText;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v0, "getText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private isCurrentYear(Ljava/lang/String;)Z
    .locals 5
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const-string v3, "isCurrentYear"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    :goto_0
    return v2

    .line 445
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 446
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "minimumString":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private isEmail(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "isEmail"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMatch(Landroid/widget/EditText;Landroid/widget/EditText;)Z
    .locals 9
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "matchingTextField"    # Landroid/widget/EditText;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "isMatch"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v6

    aput-object p2, v8, v5

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 474
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/ValidationListener;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, "text":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, "matching":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    const-string v8, "textValidation.emailConfirmationCaseSensitive"

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 479
    .local v0, "emailCaseSensitive":Z
    iget v7, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 480
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 481
    .local v4, "textLowered":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "matchingLowered":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 485
    .end local v2    # "matchingLowered":Ljava/lang/String;
    .end local v4    # "textLowered":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method private isPasswordValidationSuccess(Z)Z
    .locals 10
    .param p1, "isRegexMatched"    # Z

    .prologue
    const v9, 0x7f0201be

    const v8, 0x7f0201bd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "isPasswordValidationSuccess"

    new-array v6, v3, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v6, v4

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "passwordValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "confirmPasswordValue":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 301
    .local v1, "passwordMatches":Z
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :cond_0
    if-eqz p1, :cond_2

    .line 308
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-virtual {v5, v4, v4, v8, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 315
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 316
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 317
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    invoke-virtual {v5, v4, v4, v8, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 327
    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    :goto_2
    return v3

    .line 312
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-virtual {v5, v4, v4, v9, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 319
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    invoke-virtual {v5, v4, v4, v9, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 320
    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->passwordMatch(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 321
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    const v6, 0x7f090334

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 327
    goto :goto_2
.end method

.method private isPhone(Ljava/lang/String;)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isPhone"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "textValidation.phoneNumberRegex"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 392
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isSMS(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "isSMS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "textValidation.smsRegex"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLocalizedStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 400
    :cond_0
    return v1
.end method

.method private isValidDate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "month"    # Ljava/lang/String;
    .param p2, "year"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "isValidDate"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->isCurrentYear(Ljava/lang/String;)Z

    move-result v0

    .line 454
    .local v0, "isCurrentYear":Z
    if-nez p1, :cond_1

    .line 455
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidYear(Ljava/lang/String;)Z

    move-result v1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    if-nez p2, :cond_2

    .line 459
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidMonth(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 462
    :cond_2
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidYear(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidMonth(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isValidMonth(Ljava/lang/String;Z)Z
    .locals 13
    .param p1, "month"    # Ljava/lang/String;
    .param p2, "currentYear"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v12, 0x2

    const/4 v8, 0x0

    const-string v9, "isValidMonth"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object p1, v10, v8

    new-instance v11, Ljava/lang/Boolean;

    invoke-direct {v11, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v11, v10, v7

    invoke-static {p0, v9, v10}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 421
    :goto_0
    return v8

    .line 407
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 408
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    .line 409
    .local v4, "minimum":I
    if-eqz p2, :cond_1

    .line 410
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "MM"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 411
    .local v2, "format":Ljava/text/DateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "minimumString":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 414
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v5    # "minimumString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v3

    .line 417
    .local v3, "maximum":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 418
    .local v6, "number":I
    add-int/lit8 v6, v6, -0x1

    .line 419
    if-gt v4, v6, :cond_2

    if-gt v6, v3, :cond_2

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    .line 420
    .end local v6    # "number":I
    :catch_0
    move-exception v1

    .line 421
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private isValidYear(Ljava/lang/String;)Z
    .locals 10
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "isValidYear"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object p1, v9, v7

    invoke-static {p0, v8, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 437
    :goto_0
    return v7

    .line 429
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 430
    .local v1, "format":Ljava/text/DateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 431
    .local v4, "minimumString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 432
    .local v3, "minimum":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    .line 434
    .local v2, "maximum":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 435
    .local v5, "number":I
    if-gt v3, v5, :cond_1

    if-gt v5, v2, :cond_1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_1
    move v6, v7

    goto :goto_1

    .line 436
    .end local v5    # "number":I
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private matchesRegex(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const-string v1, "matchesRegex"

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mRegex:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 469
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mRegex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private passwordMatch(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v0, "passwordMatch"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    invoke-static {p1}, Lcom/mcdonalds/app/util/UIUtils;->isPasswordValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setPhoneMaxDigits()V
    .locals 7

    .prologue
    const-string v2, "setPhoneMaxDigits"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.register.phoneMaxNumberOfDigits"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 381
    .local v0, "maxLength":D
    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 383
    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    double-to-int v6, v0

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 385
    :cond_0
    return-void

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method private validate(Landroid/widget/EditText;IZLandroid/widget/EditText;)Z
    .locals 8
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "type"    # I
    .param p3, "hasToMatch"    # Z
    .param p4, "matchingTextField"    # Landroid/widget/EditText;

    .prologue
    const-string v3, "validate"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "text":Ljava/lang/String;
    instance-of v3, p1, Lcom/mcdonalds/app/widget/EditTextPhone;

    if-eqz v3, :cond_0

    .line 199
    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    if-eqz v3, :cond_0

    .line 200
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    .line 203
    const-string v1, ""

    .line 214
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 215
    .local v0, "matching":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 216
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    :cond_1
    invoke-direct {p0, v1, v0, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->validate(Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v2

    .line 222
    .local v2, "validated":Z
    const/16 v3, 0xa

    if-ne p2, v3, :cond_2

    .line 223
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->isPasswordValidationSuccess(Z)Z

    move-result v2

    .line 226
    :cond_2
    if-eqz v2, :cond_4

    if-eqz p4, :cond_4

    .line 227
    const/4 v3, 0x7

    if-eq p2, v3, :cond_3

    const/16 v3, 0x8

    if-ne p2, v3, :cond_a

    .line 228
    :cond_3
    const/4 v3, 0x7

    if-ne p2, v3, :cond_9

    .line 229
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p4, v3, v4, v5}, Lcom/mcdonalds/app/widget/ValidationListener;->validate(Landroid/widget/EditText;IZLandroid/widget/EditText;)Z

    move-result v2

    .line 238
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mHasImage:Z

    if-eqz v3, :cond_5

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 260
    :cond_5
    :goto_2
    if-eqz p4, :cond_e

    if-nez p3, :cond_e

    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mLinkedViews:Z

    if-eqz v3, :cond_e

    .line 262
    if-eqz v2, :cond_d

    .line 263
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201bd

    const/4 v6, 0x0

    invoke-virtual {p4, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 267
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    const v4, 0x7f02006f

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 292
    :cond_6
    :goto_3
    return v2

    .line 205
    .end local v0    # "matching":Ljava/lang/String;
    .end local v2    # "validated":Z
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_8

    .line 206
    const-string v1, ""

    goto :goto_0

    .line 208
    :cond_8
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 231
    .restart local v0    # "matching":Ljava/lang/String;
    .restart local v2    # "validated":Z
    :cond_9
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p4, v3, v4, v5}, Lcom/mcdonalds/app/widget/ValidationListener;->validate(Landroid/widget/EditText;IZLandroid/widget/EditText;)Z

    move-result v2

    goto :goto_1

    .line 233
    :cond_a
    if-eqz p3, :cond_4

    .line 234
    invoke-direct {p0, p1, p4}, Lcom/mcdonalds/app/widget/ValidationListener;->isMatch(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v2

    goto :goto_1

    .line 246
    :cond_b
    if-eqz v2, :cond_c

    .line 247
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201bd

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 251
    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201be

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 271
    :cond_d
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201be

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 277
    :cond_e
    if-eqz p3, :cond_6

    iget-boolean v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mLinkedViews:Z

    if-eqz v3, :cond_6

    .line 278
    invoke-direct {p0, p1, p4}, Lcom/mcdonalds/app/widget/ValidationListener;->isMatch(Landroid/widget/EditText;Landroid/widget/EditText;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 279
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201bd

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 282
    const v3, 0x7f02006f

    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 283
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/widget/ValidationListener;->changeValidationState(Z)V

    goto :goto_3

    .line 285
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0201be

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 288
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/mcdonalds/app/widget/ValidationListener;->changeValidationState(Z)V

    goto :goto_3
.end method

.method private validate(Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "matching"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "validate"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p2, v5, v2

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 332
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 335
    .local v0, "empty":Z
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mRequired:Z

    if-nez v4, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v2

    .line 339
    :cond_1
    packed-switch p3, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .line 374
    goto :goto_0

    .line 342
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isEmail(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 346
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->passwordMatch(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 349
    :pswitch_3
    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->isNumberValid(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 352
    :pswitch_4
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->isZipCode(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 355
    :pswitch_5
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/ValidationListener;->setPhoneMaxDigits()V

    .line 356
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isPhone(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 358
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isSMS(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 361
    :pswitch_7
    invoke-direct {p0, v1, p2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidDate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 364
    :pswitch_8
    invoke-direct {p0, p2, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidDate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 367
    :pswitch_9
    if-nez v0, :cond_2

    iget v4, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMinimumLength:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMinimumLength:I

    if-lez v4, :cond_2

    .line 368
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMinimumLength:I

    if-ge v4, v5, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .line 371
    :pswitch_a
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->matchesRegex(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    const-string v1, "afterTextChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    instance-of v1, v1, Lcom/mcdonalds/app/widget/EditTextPhone;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mUpdateListener:Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mUpdateListener:Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;

    invoke-interface {v1}, Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;->onFieldUpdate()V

    .line 186
    :cond_1
    return-void

    .line 176
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 177
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_3
    iget-boolean v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mShouldDeleteCountryCode:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->countryCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
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

    .line 146
    return-void
.end method

.method public displayError()V
    .locals 3

    .prologue
    const-string v1, "displayError"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 542
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mEmptyErrorMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mEmptyErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 548
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getTextField()Landroid/widget/EditText;
    .locals 2

    .prologue
    const-string v0, "getTextField"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    return v0
.end method

.method public isValidated()Z
    .locals 2

    .prologue
    const-string v0, "isValidated"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const-string v0, "onFocusChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 586
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 590
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/ValidationListener;->validate()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    .line 152
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-interface {v0, v5}, Lcom/mcdonalds/app/widget/ValidationListener$Callback;->onFieldValidationStateChanged(Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    invoke-interface {v0, v4}, Lcom/mcdonalds/app/widget/ValidationListener$Callback;->onFieldValidationStateChanged(Z)V

    goto :goto_0
.end method

.method public setEmptyMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setEmptyMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mEmptyErrorMessage:Ljava/lang/String;

    .line 520
    return-void
.end method

.method public setErrorDisplay(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "display"    # Landroid/widget/TextView;

    .prologue
    const-string v0, "setErrorDisplay"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorDisplay:Landroid/widget/TextView;

    .line 516
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "setErrorMessage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mErrorMessage:Ljava/lang/String;

    .line 524
    return-void
.end method

.method public setMinimumLength(I)V
    .locals 4
    .param p1, "mMinimumLength"    # I

    .prologue
    const-string v0, "setMinimumLength"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    iput p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMinimumLength:I

    .line 532
    return-void
.end method

.method public setUpdateListener(Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;

    .prologue
    const-string v0, "setUpdateListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mUpdateListener:Lcom/mcdonalds/app/widget/ValidationListener$OnUpdateListener;

    .line 581
    return-void
.end method

.method public setValidationCallback(Lcom/mcdonalds/app/widget/ValidationListener$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .prologue
    const-string v0, "setValidationCallback"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mCallback:Lcom/mcdonalds/app/widget/ValidationListener$Callback;

    .line 512
    return-void
.end method

.method public validate()Z
    .locals 4

    .prologue
    const-string v0, "validate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mTextField:Landroid/widget/EditText;

    iget v1, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mType:I

    iget-boolean v2, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mHasToMatch:Z

    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mMatchingTextfield:Landroid/widget/EditText;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mcdonalds/app/widget/ValidationListener;->validate(Landroid/widget/EditText;IZLandroid/widget/EditText;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    .line 190
    iget-boolean v0, p0, Lcom/mcdonalds/app/widget/ValidationListener;->mValidated:Z

    return v0
.end method
