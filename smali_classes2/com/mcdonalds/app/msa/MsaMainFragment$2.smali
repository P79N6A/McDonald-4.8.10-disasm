.class Lcom/mcdonalds/app/msa/MsaMainFragment$2;
.super Ljava/lang/Object;
.source "MsaMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MsaMainFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MsaMainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/msa/MsaActivity;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/msa/MsaActivity;

    const-string v1, "MsaEditFragment"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/msa/MsaActivity;->changeFragment(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment$2;->this$0:Lcom/mcdonalds/app/msa/MsaMainFragment;

    const-class v1, Lcom/mcdonalds/app/msa/MsaActivity;

    const-string v2, "MsaEditFragment"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/msa/MsaMainFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
