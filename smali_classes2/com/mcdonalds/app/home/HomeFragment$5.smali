.class Lcom/mcdonalds/app/home/HomeFragment$5;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/HomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment$5;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "onRefresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$5;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V

    .line 380
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment$5;->this$0:Lcom/mcdonalds/app/home/HomeFragment;

    invoke-static {v0, v2}, Lcom/mcdonalds/app/home/HomeFragment;->access$900(Lcom/mcdonalds/app/home/HomeFragment;Z)V

    .line 381
    return-void
.end method
