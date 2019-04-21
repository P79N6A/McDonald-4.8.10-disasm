.class Lcom/mcdonalds/app/account/ChangePasswordFragment$7;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ChangePasswordFragment;->onDoneKeyPressed(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/TextView$OnEditorActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

.field final synthetic val$validation:Lcom/mcdonalds/app/widget/ValidationListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

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

    .line 347
    const/4 v5, 0x6

    if-ne p2, v5, :cond_4

    .line 348
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 349
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->val$validation:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-virtual {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    .line 369
    :cond_0
    :goto_0
    return v3

    .line 350
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$600(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 351
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$700(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$700(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Button;->callOnClick()Z

    goto :goto_0

    .line 354
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$800(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$800(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 356
    .local v1, "key":I
    iget-object v4, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$7;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->access$800(Lcom/mcdonalds/app/account/ChangePasswordFragment;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/widget/ValidationListener;

    .line 357
    .local v2, "listener":Lcom/mcdonalds/app/widget/ValidationListener;
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->isValidated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 358
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->getTextField()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 359
    invoke-virtual {v2}, Lcom/mcdonalds/app/widget/ValidationListener;->displayError()V

    goto :goto_0

    .line 354
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "key":I
    .end local v2    # "listener":Lcom/mcdonalds/app/widget/ValidationListener;
    :cond_4
    move v3, v4

    .line 369
    goto :goto_0
.end method
