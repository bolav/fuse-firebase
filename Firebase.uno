using Uno;
using Uno.Collections;
using Fuse;
using Fuse.Scripting;
using Uno.Compiler.ExportTargetInterop;

public class Firebase : NativeModule
{
	public Firebase () {
		InitImpl();
	}

	[Foreign(Language.ObjC)]
	// [Require("Source.Import","DropboxSDK/DropboxSDK.h")]
	extern(iOS) void InitImpl ()
	@{
		[FIRApp configure];
	@}
}
