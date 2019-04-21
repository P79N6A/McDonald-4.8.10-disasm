.class Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "HomeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/home/HomeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mHeaderImage:Landroid/widget/ImageView;

.field mHeaderText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/home/HomeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/HomeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/HomeListAdapter;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeListAdapter$HeaderViewHolder;->this$0:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
