.class Lcom/mcdonalds/app/msa/MsaMainFragment$5;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->showEnableDialog(Landroid/widget/Switch;)V
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
    .line 216
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$5;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$5;->val$sw:Landroid/widget/Switch;

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

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$5;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$5;->val$sw:Landroid/widget/Switch;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->access$600(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V

    .line 220
    return-void
.end method
