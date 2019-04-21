.class Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EditTextPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/EditTextPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/EditTextPhone;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/widget/EditTextPhone;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;
    .param p3, "mutable"    # Z

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;->this$0:Lcom/mcdonalds/app/widget/EditTextPhone;

    .line 92
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 6
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    const/16 v5, 0x43

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "deleteSurroundingText"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    if-ne p1, v0, :cond_1

    if-nez p2, :cond_1

    .line 114
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v0, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/widget/EditTextPhone$CustomInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-string v0, "sendKeyEvent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 98
    const-string v0, "Click Del on Soft Keyboard."

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
