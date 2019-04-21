.class Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$1;
.super Ljava/lang/Object;
.source "TrackOrderFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .prologue
    const-string v0, "onRefresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$1;->this$0:Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->access$000(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V

    .line 98
    return-void
.end method
