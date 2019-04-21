.class Lcom/mcdonalds/app/account/ModifyCardsFragment$3;
.super Ljava/lang/Object;
.source "ModifyCardsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0902e6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onClick"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v1, v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$302(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z

    .line 233
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f09020a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$400(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->notifyDataSetChanged()V

    .line 235
    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2, v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$302(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z

    .line 239
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$400(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->notifyDataSetChanged()V

    .line 242
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$500(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 245
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$600(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$3;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$602(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_1
.end method
