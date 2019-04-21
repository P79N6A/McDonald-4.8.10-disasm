.class public Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CheckinAlertFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field private itemName:Landroid/widget/TextView;

.field private spacing:Landroid/view/View;

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;

    .line 71
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    const v0, 0x7f110146

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f110145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->spacing:Landroid/view/View;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.alert.checkin.CheckinAlertFragmentAdapter$ViewHolder"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->itemName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;)Landroid/view/View;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.alert.checkin.CheckinAlertFragmentAdapter$ViewHolder"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ViewHolder;->spacing:Landroid/view/View;

    return-object v0
.end method
