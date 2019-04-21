.class Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;
.super Ljava/lang/Object;
.source "TrackOrderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->scrollToView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$400(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 147
    return-void
.end method
