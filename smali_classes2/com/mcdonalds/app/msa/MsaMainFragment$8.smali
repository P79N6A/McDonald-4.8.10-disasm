.class Lcom/mcdonalds/app/msa/MsaMainFragment$8;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->showOfferSubscriptionDialog(Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

.field final synthetic val$sw:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$8;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$8;->val$sw:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

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

    .line 264
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$8;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$100(Lcom/mcdonalds/app/msa/MsaMainFragment;Z)V

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$8;->val$sw:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$8;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    const-class v1, Lcom/mcdonalds/app/MainActivity;

    const-string v2, "dashboard"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/msa/MsaMainFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 267
    return-void
.end method
