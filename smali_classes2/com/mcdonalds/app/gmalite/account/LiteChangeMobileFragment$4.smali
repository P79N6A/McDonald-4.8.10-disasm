.class Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;
.super Ljava/lang/Object;
.source "LiteChangeMobileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

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

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$200(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;->this$0:Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;->access$100(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4$1;-><init>(Lcom/mcdonalds/app/gmalite/account/LiteChangeMobileFragment$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->sendSMSCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 232
    return-void
.end method
