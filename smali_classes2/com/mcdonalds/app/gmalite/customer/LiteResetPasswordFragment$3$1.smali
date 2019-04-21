.class Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;
.super Ljava/lang/Object;
.source "LiteResetPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const-string v0, "onDismiss"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->startActivity(Ljava/lang/Class;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3$1;->this$1:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;

    iget-object v0, v0, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment$3;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteResetPasswordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 162
    return-void
.end method
