.class Lcom/mcdonalds/app/customer/LostPasswordFragment$2;
.super Ljava/lang/Object;
.source "LostPasswordFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/LostPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/LostPasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/LostPasswordFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "afterTextChanged"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->access$100(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->access$000(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->access$000(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->isEmailValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->access$000(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f0201bd

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 114
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 103
    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/customer/LostPasswordFragment$2;->this$0:Lcom/mcdonalds/app/customer/LostPasswordFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/LostPasswordFragment;->access$000(Lcom/mcdonalds/app/customer/LostPasswordFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v2, 0x7f0201be

    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
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

    .line 92
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

    .line 97
    return-void
.end method
