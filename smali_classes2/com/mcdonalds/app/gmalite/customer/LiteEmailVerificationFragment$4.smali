.class Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;
.super Ljava/lang/Object;
.source "LiteEmailVerificationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->handleEmailVerificationError(Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

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

    .line 235
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/MainActivity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-string v1, "gmalite_signin"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->showFragment(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    const-class v1, Lcom/mcdonalds/app/gmalite/customer/LiteSignInActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;)V

    .line 239
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/gmalite/customer/LiteEmailVerificationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    goto :goto_0
.end method
