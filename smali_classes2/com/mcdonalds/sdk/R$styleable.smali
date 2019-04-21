.class public final Lcom/mcdonalds/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final LoadingImageView:[I

.field public static final LoadingImageView_circleCrop:I = 0x2

.field public static final LoadingImageView_imageAspectRatio:I = 0x1

.field public static final LoadingImageView_imageAspectRatioAdjust:I = 0x0

.field public static final MapAttrs:[I

.field public static final MapAttrs_ambientEnabled:I = 0x10

.field public static final MapAttrs_cameraBearing:I = 0x1

.field public static final MapAttrs_cameraTargetLat:I = 0x2

.field public static final MapAttrs_cameraTargetLng:I = 0x3

.field public static final MapAttrs_cameraTilt:I = 0x4

.field public static final MapAttrs_cameraZoom:I = 0x5

.field public static final MapAttrs_liteMode:I = 0x6

.field public static final MapAttrs_mapType:I = 0x0

.field public static final MapAttrs_uiCompass:I = 0x7

.field public static final MapAttrs_uiMapToolbar:I = 0xf

.field public static final MapAttrs_uiRotateGestures:I = 0x8

.field public static final MapAttrs_uiScrollGestures:I = 0x9

.field public static final MapAttrs_uiTiltGestures:I = 0xa

.field public static final MapAttrs_uiZoomControls:I = 0xb

.field public static final MapAttrs_uiZoomGestures:I = 0xc

.field public static final MapAttrs_useViewLifecycle:I = 0xd

.field public static final MapAttrs_zOrderOnTop:I = 0xe

.field public static final SignInButton:[I

.field public static final SignInButton_buttonSize:I = 0x0

.field public static final SignInButton_colorScheme:I = 0x1

.field public static final SignInButton_scopeUris:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 2840
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mcdonalds/sdk/R$styleable;->LoadingImageView:[I

    .line 2844
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mcdonalds/sdk/R$styleable;->MapAttrs:[I

    .line 2862
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mcdonalds/sdk/R$styleable;->SignInButton:[I

    return-void

    .line 2840
    nop

    :array_0
    .array-data 4
        0x7f0100f8
        0x7f0100f9
        0x7f0100fa
    .end array-data

    .line 2844
    :array_1
    .array-data 4
        0x7f0100fb
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
        0x7f0100ff
        0x7f010100
        0x7f010101
        0x7f010102
        0x7f010103
        0x7f010104
        0x7f010105
        0x7f010106
        0x7f010107
        0x7f010108
        0x7f010109
        0x7f01010a
        0x7f01010b
    .end array-data

    .line 2862
    :array_2
    .array-data 4
        0x7f01012f
        0x7f010130
        0x7f010131
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
