.class Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;
.super Ljava/lang/Object;
.source "RequestManagerServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRequest"
.end annotation


# instance fields
.field defaultImageResId:I

.field errorImageResId:I

.field networkImageView:Lcom/android/volley/toolbox/NetworkImageView;

.field final synthetic this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;Ljava/lang/String;Lcom/android/volley/toolbox/NetworkImageView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "networkImageView"    # Lcom/android/volley/toolbox/NetworkImageView;
    .param p4, "defaultImageResId"    # I
    .param p5, "errorImageResId"    # I

    .prologue
    .line 463
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;->this$0:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;->url:Ljava/lang/String;

    .line 465
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;->networkImageView:Lcom/android/volley/toolbox/NetworkImageView;

    .line 466
    iput p4, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;->defaultImageResId:I

    .line 467
    iput p5, p0, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection$ImageRequest;->errorImageResId:I

    .line 468
    return-void
.end method
