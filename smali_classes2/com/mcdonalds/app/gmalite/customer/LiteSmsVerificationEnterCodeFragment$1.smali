.class Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$1;
.super Ljava/lang/Object;
.source "LiteSmsVerificationEnterCodeFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$validation:Lcom/mcdonalds/app/widget/ValidationListener;


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

    .line 130
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 131
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$1;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSmsVerificationEnterCodeFragment$1;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v1}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 137
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
