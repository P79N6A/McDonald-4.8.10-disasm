.class Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;
.super Ljava/lang/Object;
.source "PaymentProviderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;->this$1:Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;->this$1:Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    const v2, 0x7f09033b

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;->this$1:Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4$1;->this$1:Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/PaymentProviderFragment$4;->this$0:Lcom/mcdonalds/app/ordering/PaymentProviderFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/PaymentProviderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 212
    return-void
.end method
