.class Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;
.super Ljava/lang/Object;
.source "CollectionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowComputeResult"
.end annotation


# instance fields
.field group:Lcom/mcdonalds/app/widget/CollectionView$InventoryGroup;

.field groupId:I

.field groupOffset:I

.field isHeader:Z

.field row:I

.field final synthetic this$0:Lcom/mcdonalds/app/widget/CollectionView;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/widget/CollectionView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;->this$0:Lcom/mcdonalds/app/widget/CollectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/widget/CollectionView;Lcom/mcdonalds/app/widget/CollectionView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/widget/CollectionView;
    .param p2, "x1"    # Lcom/mcdonalds/app/widget/CollectionView$1;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/CollectionView$RowComputeResult;-><init>(Lcom/mcdonalds/app/widget/CollectionView;)V

    return-void
.end method
