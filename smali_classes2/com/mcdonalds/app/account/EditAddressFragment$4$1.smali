.class Lcom/mcdonalds/app/account/EditAddressFragment$4$1;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/EditAddressFragment$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/EditAddressFragment$4;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/EditAddressFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/EditAddressFragment$4;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

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

    .line 384
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->val$editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$4;

    iget-object v1, v1, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$600(Lcom/mcdonalds/app/account/EditAddressFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment$4$1;->this$1:Lcom/mcdonalds/app/account/EditAddressFragment$4;

    iget-object v0, v0, Lcom/mcdonalds/app/account/EditAddressFragment$4;->this$0:Lcom/mcdonalds/app/account/EditAddressFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->access$602(Lcom/mcdonalds/app/account/EditAddressFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    return-void
.end method
