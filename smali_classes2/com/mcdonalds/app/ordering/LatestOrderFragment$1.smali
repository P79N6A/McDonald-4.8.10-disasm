.class Lcom/mcdonalds/app/ordering/LatestOrderFragment$1;
.super Ljava/lang/Object;
.source "LatestOrderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/LatestOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/LatestOrderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/LatestOrderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/LatestOrderFragment;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/LatestOrderFragment;

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

    .line 84
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/LatestOrderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/LatestOrderFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/LatestOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 85
    return-void
.end method
