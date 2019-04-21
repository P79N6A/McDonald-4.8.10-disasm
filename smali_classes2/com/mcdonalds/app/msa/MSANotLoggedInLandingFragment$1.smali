.class Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "MSANotLoggedInLandingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;->this$0:Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;->this$0:Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;

    const-class v1, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->startActivity(Ljava/lang/Class;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment$1;->this$0:Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/msa/MSANotLoggedInLandingFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 54
    return-void
.end method
