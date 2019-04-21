.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onHomeListItemClicked(Lcom/mcdonalds/app/home/HomeListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$item:Lcom/mcdonalds/app/home/HomeListItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;->val$item:Lcom/mcdonalds/app/home/HomeListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$19;->val$item:Lcom/mcdonalds/app/home/HomeListItem;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$1700(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 1188
    return-void
.end method
