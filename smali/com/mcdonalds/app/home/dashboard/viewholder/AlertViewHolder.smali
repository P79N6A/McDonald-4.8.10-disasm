.class public Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AlertViewHolder.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    return-void
.end method

.method public static create(Landroid/view/LayoutInflater;Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;Ljava/lang/Boolean;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "mDashboardListener"    # Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;
    .param p2, "isPhoneVerfication"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x0

    const-string v3, "com.mcdonalds.app.home.dashboard.viewholder.AlertViewHolder"

    const-string v4, "create"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-static {v7, v3, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const v3, 0x7f040033

    invoke-virtual {p0, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 25
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1100f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .local v0, "cancelButton":Landroid/widget/ImageView;
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder$1;

    invoke-direct {v3, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder$1;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v3, 0x7f1100f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 35
    .local v1, "message":Landroid/widget/TextView;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    const v3, 0x7f09081b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 39
    :cond_0
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder$2;

    invoke-direct {v3, p1}, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder$2;-><init>(Lcom/mcdonalds/app/home/dashboard/DashboardAdapter$DashboardListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v3, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder;

    invoke-direct {v3, v2}, Lcom/mcdonalds/app/home/dashboard/viewholder/AlertViewHolder;-><init>(Landroid/view/View;)V

    return-object v3
.end method
