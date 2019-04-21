.class final Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;
.super Ljava/lang/Object;
.source "NotSignedInViewHolder.java"

# interfaces
.implements Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisterClicked()V
    .locals 2

    .prologue
    const-string v0, "onRegisterClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onRegisterClick()V

    .line 54
    :cond_0
    return-void
.end method

.method public onSignInClicked()V
    .locals 2

    .prologue
    const-string v0, "onSignInClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;->val$dashboardListener:Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;->onSignInClick()V

    .line 61
    :cond_0
    return-void
.end method
