.class Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;
.super Ljava/lang/Object;
.source "LiteSignUpFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

.field final synthetic val$validation:Lcom/mcdonalds/app/widget/ValidationListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "onEditorAction"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v4

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v3

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    const/4 v5, 0x6

    if-ne p2, v5, :cond_2

    .line 477
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v5}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 478
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 489
    :cond_0
    :goto_0
    return v3

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v5

    iget-object v6, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteSignUpFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getId()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 480
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 481
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 482
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 483
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f1102e4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 484
    .local v1, "toggle":Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_0

    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "toggle":Landroid/widget/LinearLayout;
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    move v3, v4

    .line 489
    goto :goto_0
.end method
