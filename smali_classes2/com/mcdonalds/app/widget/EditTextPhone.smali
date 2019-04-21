.class public Lcom/mcdonalds/app/widget/EditTextPhone;
.super Landroid/widget/EditText;
.source "EditTextPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;
    }
.end annotation


# instance fields
.field private mCountryCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setNoSelectionMode()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setNoSelectionMode()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setNoSelectionMode()V

    .line 32
    return-void
.end method

.method private setNoSelectionMode()V
    .locals 2

    .prologue
    const-string v0, "setNoSelectionMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/widget/EditTextPhone;->setLongClickable(Z)V

    .line 71
    return-void
.end method


# virtual methods
.method public getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getCountryCode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneWithoutCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getPhoneWithoutCountryCode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/EditTextPhone;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onCreateInputConnection"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;-><init>(Lcom/mcdonalds/app/widget/EditTextPhone;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-string v1, "onDraw"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/mcdonalds/app/widget/EditTextPhone;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/widget/EditTextPhone;->setSelection(I)V

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mCountryCode"    # Ljava/lang/String;

    .prologue
    const-string v0, "setCountryCode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/widget/EditTextPhone;->mCountryCode:Ljava/lang/String;

    .line 79
    return-void
.end method
