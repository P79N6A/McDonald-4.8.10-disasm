.class public Lcom/mcdonalds/app/widget/KeyboardListenerEditText;
.super Landroid/widget/EditText;
.source "KeyboardListenerEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;
    }
.end annotation


# instance fields
.field private mKeyboardDismissListener:Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-string v0, "onKeyPreIme"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/mcdonalds/app/widget/KeyboardListenerEditText;->mKeyboardDismissListener:Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/mcdonalds/app/widget/KeyboardListenerEditText;->mKeyboardDismissListener:Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;->onKeyboardDismiss()V

    .line 37
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setKeyboardDismissListener(Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;)V
    .locals 3
    .param p1, "keyboardDismissListener"    # Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;

    .prologue
    const-string v0, "setKeyboardDismissListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-object p1, p0, Lcom/mcdonalds/app/widget/KeyboardListenerEditText;->mKeyboardDismissListener:Lcom/mcdonalds/app/widget/KeyboardListenerEditText$KeyboardDismissListener;

    .line 42
    return-void
.end method
