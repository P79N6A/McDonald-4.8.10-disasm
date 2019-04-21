.class Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$1;
.super Ljava/lang/Object;
.source "MSALoggedInLandingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$1;->this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "fragment"

    const-string v2, "msa"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment$1;->this$0:Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;

    const-class v2, Lcom/mcdonalds/app/msa/MsaActivity;

    invoke-virtual {v1, v2, v0}, Lcom/mcdonalds/app/msa/MSALoggedInLandingFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 58
    return-void
.end method
