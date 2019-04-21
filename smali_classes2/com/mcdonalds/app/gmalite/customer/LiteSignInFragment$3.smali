.class Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;
.super Ljava/lang/Object;
.source "LiteSignInFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 253
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "afterTextChanged"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$500(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$302(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Z)Z

    .line 274
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$200(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$400(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$400(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 281
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;->access$302(Lcom/mcdonalds/app/gmalite/customer/LiteSignInFragment;Z)Z

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

    .line 257
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

    .line 262
    return-void
.end method
