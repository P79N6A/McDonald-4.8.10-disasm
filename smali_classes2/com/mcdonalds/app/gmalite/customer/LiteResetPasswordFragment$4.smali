.class Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;
.super Ljava/lang/Object;
.source "LiteResetPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const v7, 0x7f0201be

    const v6, 0x7f0201bd

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "afterTextChanged"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils;->isPasswordValid(Ljava/lang/String;)Z

    move-result v1

    .line 190
    .local v1, "validPassword":Z
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    .local v0, "passwordMatches":Z
    iget-object v4, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$300(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    if-eqz v1, :cond_1

    .line 197
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v6, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 204
    :goto_1
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 206
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v6, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 210
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 192
    goto :goto_0

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v7, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v7, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2
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

    .line 180
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

    .line 185
    return-void
.end method
