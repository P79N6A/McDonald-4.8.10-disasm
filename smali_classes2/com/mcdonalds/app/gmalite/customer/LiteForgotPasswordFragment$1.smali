.class Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;
.super Ljava/lang/Object;
.source "LiteForgotPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    const-string v1, "afterTextChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    .line 96
    .local v0, "validEmail":Z
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0201bd

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment$1;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;->access$000(Lcom/mcdonalds/app/gmalite/customer/LiteForgotPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x7f0201be

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
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

    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const-string v0, "onTextChanged"

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

    .line 89
    return-void
.end method
