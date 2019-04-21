.class Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GeoSuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public pin:Landroid/widget/ImageView;

.field public subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;->this$0:Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;
    .param p2, "x1"    # Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/widget/GeoSuggestionsAdapter;)V

    return-void
.end method
