.class Lcom/mcdonalds/app/customer/UserValidationFragment$1;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

.field final synthetic val$done:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->val$done:Landroid/widget/Button;

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

    .line 139
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->val$done:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$000(Lcom/mcdonalds/app/customer/UserValidationFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

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

    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

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

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$100(Lcom/mcdonalds/app/customer/UserValidationFragment;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$002(Lcom/mcdonalds/app/customer/UserValidationFragment;Z)Z

    .line 126
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$000(Lcom/mcdonalds/app/customer/UserValidationFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$200(Lcom/mcdonalds/app/customer/UserValidationFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0201bd

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 135
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$1;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$200(Lcom/mcdonalds/app/customer/UserValidationFragment;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method
