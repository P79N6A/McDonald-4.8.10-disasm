.class Lcom/mcdonalds/app/account/ChangePasswordFragment$4;
.super Ljava/lang/Object;
.source "ChangePasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/account/ChangePasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ChangePasswordFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ChangePasswordFragment;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 271
    iget-object v0, p0, Lcom/mcdonalds/app/account/ChangePasswordFragment$4;->this$0:Lcom/mcdonalds/app/account/ChangePasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/ChangePasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 273
    :cond_0
    return-void
.end method