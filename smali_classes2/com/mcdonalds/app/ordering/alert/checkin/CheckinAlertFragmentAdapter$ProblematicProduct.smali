.class public Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;
.super Ljava/lang/Object;
.source "CheckinAlertFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProblematicProduct"
.end annotation


# instance fields
.field public mainProduct:Z

.field public productName:Ljava/lang/String;

.field public shouldShowAlert:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "shouldShowAlert"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->productName:Ljava/lang/String;

    .line 90
    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->shouldShowAlert:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "shouldShowAlert"    # Z
    .param p3, "mainProduct"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->productName:Ljava/lang/String;

    .line 95
    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->shouldShowAlert:Z

    .line 96
    iput-boolean p3, p0, Lcom/mcdonalds/app/ordering/alert/checkin/CheckinAlertFragmentAdapter$ProblematicProduct;->mainProduct:Z

    .line 97
    return-void
.end method
