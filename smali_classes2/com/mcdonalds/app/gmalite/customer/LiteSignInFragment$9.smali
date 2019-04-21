.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const-string v1, "onFocusChange"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    if-nez p2, :cond_0

    .line 410
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$700(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 411
    .local v0, "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 421
    .end local v0    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_0
    :goto_0
    return-void

    .line 416
    .restart local v0    # "validation":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$800(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Lcom/mcdonalds/app/customer/ChooseMethodView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->getSelection()I

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$9;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$800(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Lcom/mcdonalds/app/customer/ChooseMethodView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/customer/ChooseMethodView;->displayError()V

    goto :goto_0
.end method
