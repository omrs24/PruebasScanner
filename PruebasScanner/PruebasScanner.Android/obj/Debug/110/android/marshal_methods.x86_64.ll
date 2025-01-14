; ModuleID = 'obj\Debug\110\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\110\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [218 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 7
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 42
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 66
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 67
	i64 634308326490598313, ; 4: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 57
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 89
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 51
	i64 816102801403336439, ; 7: Xamarin.Android.Support.Collections => 0xb53612c89d8d6f7 => 24
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 48
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 92
	i64 996343623809489702, ; 10: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 79
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 98
	i64 1120440138749646132, ; 12: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 81
	i64 1293368548104035332, ; 13: PruebasScanner.dll => 0x11f2f7d789675c04 => 12
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 37
	i64 1342439039765371018, ; 15: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 28
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1490981186906623721, ; 17: Xamarin.Android.Support.VersionedParcelable => 0x14b1077d6c5c0ee9 => 31
	i64 1624659445732251991, ; 18: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 35
	i64 1628611045998245443, ; 19: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 59
	i64 1636321030536304333, ; 20: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 52
	i64 1731380447121279447, ; 21: Newtonsoft.Json => 0x18071957e9b889d7 => 9
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 36
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 66
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 33
	i64 1938067011858688285, ; 25: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 30
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 58
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 9
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 63
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 40
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 48
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 97
	i64 2329709569556905518, ; 32: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 55
	i64 2470498323731680442, ; 33: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 43
	i64 2479423007379663237, ; 34: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 70
	i64 2497223385847772520, ; 35: System.Runtime => 0x22a7eb7046413568 => 17
	i64 2547086958574651984, ; 36: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 32
	i64 2592350477072141967, ; 37: System.Xml.dll => 0x23f9e10627330e8f => 18
	i64 2624866290265602282, ; 38: mscorlib.dll => 0x246d65fbde2db8ea => 8
	i64 2692509909129159130, ; 39: Plugin.XamarinFormsSaveOpenPDFPackage => 0x255db77f2fdce1da => 11
	i64 2801558180824670388, ; 40: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 10
	i64 2960931600190307745, ; 41: Xamarin.Forms.Core => 0x2917579a49927da1 => 76
	i64 3017704767998173186, ; 42: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 81
	i64 3022227708164871115, ; 43: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 29
	i64 3289520064315143713, ; 44: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 54
	i64 3303437397778967116, ; 45: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 34
	i64 3311221304742556517, ; 46: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 16
	i64 3522470458906976663, ; 47: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 68
	i64 3531994851595924923, ; 48: System.Numerics => 0x31042a9aade235bb => 15
	i64 3571415421602489686, ; 49: System.Runtime.dll => 0x319037675df7e556 => 17
	i64 3609787854626478660, ; 50: Plugin.CurrentActivity => 0x32188aeda587da44 => 10
	i64 3716579019761409177, ; 51: netstandard.dll => 0x3393f0ed5c8c5c99 => 90
	i64 3727469159507183293, ; 52: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 65
	i64 4255796613242758200, ; 53: zxing.portable => 0x3b0fa078b8a52438 => 86
	i64 4292233171264798357, ; 54: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 83
	i64 4525561845656915374, ; 55: System.ServiceModel.Internals => 0x3ece06856b710dae => 88
	i64 4636684751163556186, ; 56: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 72
	i64 4782108999019072045, ; 57: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 39
	i64 4794310189461587505, ; 58: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 32
	i64 4795410492532947900, ; 59: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 68
	i64 5142919913060024034, ; 60: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 78
	i64 5203618020066742981, ; 61: Xamarin.Essentials => 0x4836f704f0e652c5 => 75
	i64 5205316157927637098, ; 62: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 61
	i64 5233983725610684227, ; 63: FastAndroidCamera => 0x48a2d877b5334f43 => 3
	i64 5348796042099802469, ; 64: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 62
	i64 5375264076663995773, ; 65: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 77
	i64 5376510917114486089, ; 66: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 70
	i64 5408338804355907810, ; 67: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 69
	i64 5446034149219586269, ; 68: System.Diagnostics.Debug => 0x4b94333452e150dd => 102
	i64 5507995362134886206, ; 69: System.Core.dll => 0x4c705499688c873e => 13
	i64 5692067934154308417, ; 70: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 74
	i64 5767696078500135884, ; 71: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 23
	i64 5767749323661124970, ; 72: ZXing.Net.Mobile.Core => 0x500b29737652256a => 83
	i64 5896680224035167651, ; 73: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 56
	i64 6085203216496545422, ; 74: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 79
	i64 6086316965293125504, ; 75: FormsViewGroup.dll => 0x5476f10882baef80 => 4
	i64 6319713645133255417, ; 76: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 57
	i64 6401687960814735282, ; 77: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 55
	i64 6504860066809920875, ; 78: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 40
	i64 6548213210057960872, ; 79: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 46
	i64 6588599331800941662, ; 80: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 30
	i64 6591024623626361694, ; 81: System.Web.Services.dll => 0x5b7805f9751a1b5e => 97
	i64 6659513131007730089, ; 82: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 51
	i64 6876862101832370452, ; 83: System.Xml.Linq => 0x5f6f85a57d108914 => 19
	i64 6894844156784520562, ; 84: System.Numerics.Vectors => 0x5faf683aead1ad72 => 16
	i64 7036436454368433159, ; 85: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 53
	i64 7103753931438454322, ; 86: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 50
	i64 7488575175965059935, ; 87: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 19
	i64 7489048572193775167, ; 88: System.ObjectModel => 0x67ee71ff6b419e3f => 103
	i64 7558032598660402520, ; 89: PruebasScanner.Android.dll => 0x68e3869ab3f9cd58 => 0
	i64 7581776440415200524, ; 90: PruebasScanner.Android => 0x6937e180a95fa50c => 0
	i64 7635363394907363464, ; 91: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 76
	i64 7637365915383206639, ; 92: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 75
	i64 7654504624184590948, ; 93: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7820441508502274321, ; 94: System.Data => 0x6c87ca1e14ff8111 => 91
	i64 7836164640616011524, ; 95: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 35
	i64 8044118961405839122, ; 96: System.ComponentModel.Composition => 0x6fa2739369944712 => 96
	i64 8064050204834738623, ; 97: System.Collections.dll => 0x6fe942efa61731bf => 100
	i64 8083354569033831015, ; 98: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 54
	i64 8101777744205214367, ; 99: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 23
	i64 8103644804370223335, ; 100: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 93
	i64 8167236081217502503, ; 101: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 6
	i64 8185542183669246576, ; 102: System.Collections => 0x7198e33f4794aa70 => 100
	i64 8290740647658429042, ; 103: System.Runtime.Extensions => 0x730ea0b15c929a72 => 101
	i64 8385935383968044654, ; 104: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0x7460d3cd16cb566e => 22
	i64 8601935802264776013, ; 105: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 69
	i64 8626175481042262068, ; 106: Java.Interop => 0x77b654e585b55834 => 6
	i64 8684531736582871431, ; 107: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 95
	i64 9312692141327339315, ; 108: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 74
	i64 9324707631942237306, ; 109: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 36
	i64 9396383822003894449, ; 110: ImageFromXamarinUI => 0x8266a94d4bc4f8b1 => 5
	i64 9584643793929893533, ; 111: System.IO.dll => 0x85037ebfbbd7f69d => 106
	i64 9659729154652888475, ; 112: System.Text.RegularExpressions => 0x860e407c9991dd9b => 107
	i64 9662334977499516867, ; 113: System.Numerics.dll => 0x8617827802b0cfc3 => 15
	i64 9678050649315576968, ; 114: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 43
	i64 9711637524876806384, ; 115: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 62
	i64 9808709177481450983, ; 116: Mono.Android.dll => 0x881f890734e555e7 => 7
	i64 9834056768316610435, ; 117: System.Transactions.dll => 0x8879968718899783 => 92
	i64 9866412715007501892, ; 118: Xamarin.Android.Arch.Lifecycle.Common.dll => 0x88ec8a16fd6b6644 => 21
	i64 9998632235833408227, ; 119: Mono.Security => 0x8ac2470b209ebae3 => 98
	i64 10038780035334861115, ; 120: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 121: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 46
	i64 10360651442923773544, ; 122: System.Text.Encoding => 0x8fc86d98211c1e68 => 105
	i64 10363495123250631811, ; 123: Xamarin.Android.Support.Collections.dll => 0x8fd287e80cd8d483 => 24
	i64 10430153318873392755, ; 124: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 44
	i64 10566960649245365243, ; 125: System.Globalization.dll => 0x92a562b96dcd13fb => 108
	i64 10714184849103829812, ; 126: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 101
	i64 10847732767863316357, ; 127: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 37
	i64 10850923258212604222, ; 128: Xamarin.Android.Arch.Lifecycle.Runtime => 0x9696393672c9593e => 22
	i64 11023048688141570732, ; 129: System.Core => 0x98f9bc61168392ac => 13
	i64 11037814507248023548, ; 130: System.Xml => 0x992e31d0412bf7fc => 18
	i64 11162124722117608902, ; 131: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 73
	i64 11340910727871153756, ; 132: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 45
	i64 11376461258732682436, ; 133: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 25
	i64 11392833485892708388, ; 134: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 64
	i64 11529969570048099689, ; 135: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 73
	i64 11578238080964724296, ; 136: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 53
	i64 11580057168383206117, ; 137: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 33
	i64 11597940890313164233, ; 138: netstandard => 0xa0f429ca8d1805c9 => 90
	i64 11672361001936329215, ; 139: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 50
	i64 11683710219442713716, ; 140: ZXingNetMobile => 0xa224e08aa87bf474 => 87
	i64 11743665907891708234, ; 141: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 99
	i64 11999978245715484738, ; 142: ImageFromXamarinUI.dll => 0xa6887ca2c8496042 => 5
	i64 12036099219279441448, ; 143: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 85
	i64 12137774235383566651, ; 144: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 71
	i64 12414299427252656003, ; 145: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 25
	i64 12451044538927396471, ; 146: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 49
	i64 12466513435562512481, ; 147: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 60
	i64 12487638416075308985, ; 148: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 47
	i64 12538491095302438457, ; 149: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 41
	i64 12550732019250633519, ; 150: System.IO.Compression => 0xae2d28465e8e1b2f => 94
	i64 12629983860853673214, ; 151: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 84
	i64 12700543734426720211, ; 152: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 42
	i64 12708238894395270091, ; 153: System.IO => 0xb05cbbf17d3ba3cb => 106
	i64 12952608645614506925, ; 154: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 27
	i64 12963446364377008305, ; 155: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 89
	i64 13358059602087096138, ; 156: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 28
	i64 13370592475155966277, ; 157: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13401370062847626945, ; 158: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 71
	i64 13454009404024712428, ; 159: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 82
	i64 13491513212026656886, ; 160: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 38
	i64 13572454107664307259, ; 161: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 65
	i64 13647894001087880694, ; 162: System.Data.dll => 0xbd670f48cb071df6 => 91
	i64 13959074834287824816, ; 163: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 49
	i64 13967638549803255703, ; 164: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 78
	i64 14124974489674258913, ; 165: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 41
	i64 14125464355221830302, ; 166: System.Threading.dll => 0xc407bafdbc707a9e => 104
	i64 14172845254133543601, ; 167: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 63
	i64 14261073672896646636, ; 168: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 64
	i64 14400856865250966808, ; 169: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 26
	i64 14486659737292545672, ; 170: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 56
	i64 14644440854989303794, ; 171: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 61
	i64 14792063746108907174, ; 172: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 82
	i64 14852515768018889994, ; 173: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 45
	i64 14954388675289411854, ; 174: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 85
	i64 14987728460634540364, ; 175: System.IO.Compression.dll => 0xcfff1ba06622494c => 94
	i64 14988210264188246988, ; 176: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 47
	i64 15076659072870671916, ; 177: System.ObjectModel.dll => 0xd13b0d8c1620662c => 103
	i64 15188640517174936311, ; 178: Xamarin.Android.Arch.Core.Common => 0xd2c8e413d75142f7 => 20
	i64 15216786773475677495, ; 179: Plugin.XamarinFormsSaveOpenPDFPackage.dll => 0xd32ce2f2cfe15537 => 11
	i64 15246441518555807158, ; 180: Xamarin.Android.Arch.Core.Common.dll => 0xd3963dc832493db6 => 20
	i64 15370334346939861994, ; 181: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 44
	i64 15457813392950723921, ; 182: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 29
	i64 15526743539506359484, ; 183: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 105
	i64 15568534730848034786, ; 184: Xamarin.Android.Support.VersionedParcelable.dll => 0xd80e8bda21875fe2 => 31
	i64 15582737692548360875, ; 185: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 59
	i64 15609085926864131306, ; 186: System.dll => 0xd89e9cf3334914ea => 14
	i64 15777549416145007739, ; 187: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 67
	i64 15810740023422282496, ; 188: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 80
	i64 15817206913877585035, ; 189: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 99
	i64 15851975962649584118, ; 190: zxing.portable.dll => 0xdbfd882691c261f6 => 86
	i64 16107354805249926211, ; 191: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 87
	i64 16119456071779071829, ; 192: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 3
	i64 16154507427712707110, ; 193: System => 0xe03056ea4e39aa26 => 14
	i64 16526376532108668976, ; 194: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 84
	i64 16565028646146589191, ; 195: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 96
	i64 16822611501064131242, ; 196: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 93
	i64 16833383113903931215, ; 197: mscorlib => 0xe99c30c1484d7f4f => 8
	i64 16890310621557459193, ; 198: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 107
	i64 16932527889823454152, ; 199: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 27
	i64 17024911836938395553, ; 200: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 34
	i64 17037200463775726619, ; 201: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 52
	i64 17428701562824544279, ; 202: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 26
	i64 17544493274320527064, ; 203: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 39
	i64 17627500474728259406, ; 204: System.Globalization => 0xf4a176498a351f4e => 108
	i64 17685921127322830888, ; 205: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 102
	i64 17704177640604968747, ; 206: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 60
	i64 17710060891934109755, ; 207: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 58
	i64 17760961058993581169, ; 208: Xamarin.Android.Arch.Lifecycle.Common => 0xf67b9bfb46dbac71 => 21
	i64 17766779079780537736, ; 209: PruebasScanner => 0xf6904770cd291588 => 12
	i64 17827832363535584534, ; 210: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 77
	i64 17882897186074144999, ; 211: FormsViewGroup => 0xf82cd03e3ac830e7 => 4
	i64 17892495832318972303, ; 212: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 80
	i64 17928294245072900555, ; 213: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 95
	i64 18025913125965088385, ; 214: System.Threading => 0xfa28e87b91334681 => 104
	i64 18116111925905154859, ; 215: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 38
	i64 18129453464017766560, ; 216: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 88
	i64 18380184030268848184 ; 217: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 72
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [218 x i32] [
	i32 7, i32 42, i32 66, i32 67, i32 57, i32 89, i32 51, i32 24, ; 0..7
	i32 48, i32 92, i32 79, i32 98, i32 81, i32 12, i32 37, i32 28, ; 8..15
	i32 2, i32 31, i32 35, i32 59, i32 52, i32 9, i32 36, i32 66, ; 16..23
	i32 33, i32 30, i32 58, i32 9, i32 63, i32 40, i32 48, i32 97, ; 24..31
	i32 55, i32 43, i32 70, i32 17, i32 32, i32 18, i32 8, i32 11, ; 32..39
	i32 10, i32 76, i32 81, i32 29, i32 54, i32 34, i32 16, i32 68, ; 40..47
	i32 15, i32 17, i32 10, i32 90, i32 65, i32 86, i32 83, i32 88, ; 48..55
	i32 72, i32 39, i32 32, i32 68, i32 78, i32 75, i32 61, i32 3, ; 56..63
	i32 62, i32 77, i32 70, i32 69, i32 102, i32 13, i32 74, i32 23, ; 64..71
	i32 83, i32 56, i32 79, i32 4, i32 57, i32 55, i32 40, i32 46, ; 72..79
	i32 30, i32 97, i32 51, i32 19, i32 16, i32 53, i32 50, i32 19, ; 80..87
	i32 103, i32 0, i32 0, i32 76, i32 75, i32 1, i32 91, i32 35, ; 88..95
	i32 96, i32 100, i32 54, i32 23, i32 93, i32 6, i32 100, i32 101, ; 96..103
	i32 22, i32 69, i32 6, i32 95, i32 74, i32 36, i32 5, i32 106, ; 104..111
	i32 107, i32 15, i32 43, i32 62, i32 7, i32 92, i32 21, i32 98, ; 112..119
	i32 1, i32 46, i32 105, i32 24, i32 44, i32 108, i32 101, i32 37, ; 120..127
	i32 22, i32 13, i32 18, i32 73, i32 45, i32 25, i32 64, i32 73, ; 128..135
	i32 53, i32 33, i32 90, i32 50, i32 87, i32 99, i32 5, i32 85, ; 136..143
	i32 71, i32 25, i32 49, i32 60, i32 47, i32 41, i32 94, i32 84, ; 144..151
	i32 42, i32 106, i32 27, i32 89, i32 28, i32 2, i32 71, i32 82, ; 152..159
	i32 38, i32 65, i32 91, i32 49, i32 78, i32 41, i32 104, i32 63, ; 160..167
	i32 64, i32 26, i32 56, i32 61, i32 82, i32 45, i32 85, i32 94, ; 168..175
	i32 47, i32 103, i32 20, i32 11, i32 20, i32 44, i32 29, i32 105, ; 176..183
	i32 31, i32 59, i32 14, i32 67, i32 80, i32 99, i32 86, i32 87, ; 184..191
	i32 3, i32 14, i32 84, i32 96, i32 93, i32 8, i32 107, i32 27, ; 192..199
	i32 34, i32 52, i32 26, i32 39, i32 108, i32 102, i32 60, i32 58, ; 200..207
	i32 21, i32 12, i32 77, i32 4, i32 80, i32 95, i32 104, i32 38, ; 208..215
	i32 88, i32 72 ; 216..217
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
