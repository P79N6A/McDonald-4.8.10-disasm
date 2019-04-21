.class public Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NotSignedInViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;
    }
.end annotation


# instance fields
.field private final mItemView:Landroid/view/View;

.field private final mListener:Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;

.field public mRegisterButton:Landroid/widget/TextView;

.field public mRegisterPrompt:Landroid/widget/TextView;

.field public mSignInButton:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "notSignedInViewListener"    # Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mItemView:Landroid/view/View;

    .line 31
    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mListener:Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;

    .line 32
    const v0, 0x7f11011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mRegisterPrompt:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f110518

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mRegisterButton:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f110517

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mSignInButton:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mRegisterButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mSignInButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public static bind(Landroid/content/Context;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewHolder"    # Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.NotSignedInViewHolder"

    const-string v3, "bind"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.dashboard.offersTextGuest"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "guestTextKey":Ljava/lang/String;
    iget-object v1, p1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mRegisterPrompt:Landroid/widget/TextView;

    invoke-static {p0, v0}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p0, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p1, "dashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;

    .prologue
    const/4 v6, 0x0

    const-string v2, "com.mcdonalds.app.home.dashboard.viewholder.NotSignedInViewHolder"

    const-string v3, "create"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v6, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const v2, 0x7f040191

    invoke-virtual {p0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "notSignedInView":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;

    new-instance v2, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;

    invoke-direct {v2, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V

    invoke-direct {v1, v0, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;-><init>(Landroid/view/View;Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;)V

    .line 63
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
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

    nop

    nop

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mListener:Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;->onRegisterClicked()V

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder;->mListener:Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/home/dashboard/viewholder/NotSignedInViewHolder$NotSignedInViewListener;->onSignInClicked()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x7f110517
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
