.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

.field final synthetic val$validation:Lcom/mcdonalds/app/widget/ValidationListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onEditorAction"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v0

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 430
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 437
    :goto_0
    return v0

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$10;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$400(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 437
    goto :goto_0
.end method
