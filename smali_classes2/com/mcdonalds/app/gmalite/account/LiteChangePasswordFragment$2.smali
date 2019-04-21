.class Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;
.super Ljava/lang/Object;
.source "LiteChangePasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const-string v0, "afterTextChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-void
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

    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const v9, 0x7f0201be

    const v8, 0x7f0201bd

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "onTextChanged"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v5, v3

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    invoke-static {p0, v2, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->isPasswordValid(Ljava/lang/String;)Z

    move-result v1

    .line 110
    .local v1, "validPassword":Z
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 112
    .local v0, "passwordMatches":Z
    iget-object v5, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v5, v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$302(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;Z)Z

    .line 113
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$400(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$300(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$500(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    :goto_1
    if-eqz v1, :cond_2

    .line 122
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v8, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 129
    :goto_2
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 131
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v8, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 135
    :goto_3
    return-void

    :cond_0
    move v2, v4

    .line 112
    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$500(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 126
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v9, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 133
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment$2;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;->access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v9, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3
.end method
