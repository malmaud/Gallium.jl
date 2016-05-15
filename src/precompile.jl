function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(Gallium._find_module, (Base.Dict{UInt64, Gallium.Module}, UInt64,))
    precompile(Gallium.Hooking.mem_validate, (Ptr{Ptr{Void}}, Int64,))
    precompile(Gallium.breakpoint_hit, (Gallium.Hooking.Hook, Gallium.X86_64.BasicRegs,))
    precompile(Gallium.find_module, (Gallium.LazyLocalModules, UInt64,))
    precompile(Gallium.X86_64.copy, (Gallium.X86_64.BasicRegs,))
    precompile(Gallium.Hooking.mem_validate, (UInt64, Int64,))
    precompile(Gallium.Unwinder.entry_cfa, (Gallium.Module, Gallium.X86_64.BasicRegs,))
    precompile(Gallium.Hooking.mem_validate, (Ptr{Void}, Int64,))
    precompile(Gallium.Hooking._callback, (Ptr{Void},))
    precompile(Gallium.Unwinder.find_fde, (Gallium.Module, UInt64,))
    precompile(Gallium.X86_64.get_dwarf, (Gallium.X86_64.BasicRegs, UInt8,))
    precompile(Gallium.X86_64.invalidate_regs!, (Gallium.X86_64.BasicRegs,))
    precompile(Gallium.Hooking.hook, (Any, Ptr{Void},))
    precompile(Gallium.update_shlibs!, (Gallium.LazyLocalModules,))
    precompile(Gallium.Hooking.get_function_addr, (DataType,))
    precompile(Gallium._find_module, (Base.Dict{UInt64, Gallium.Module}, Ptr{Void},))
    precompile(Gallium.Type, (Type{Gallium.JuliaStackFrame}, Gallium.Module, Void, UInt64, UInt64, Base.GMP.BigInt, LambdaInfo, Base.Dict{Any, Any}, ASTInterpreter.Environment,))
    precompile(Gallium.fire, (Gallium.MethSource, Method,))
    precompile(Gallium.X86_64.Type, (Type{Gallium.X86_64.BasicRegs}, MachO.thread_command,))
    precompile(Gallium.find_module, (Gallium.LazyLocalModules, Ptr{Void},))
    precompile(Gallium.first_actual_segment, (Gallium.Module,))
    precompile(Gallium.Hooking.to_page, (Ptr{Void}, UInt64,))
    precompile(Gallium.Hooking.mach_check, (UInt32, Gallium.Hooking.MemoryRegion,))
    precompile(Gallium.initial_sweep, ())
    precompile(Gallium.newmeth_tracer, (Ptr{Void},))
    precompile(Gallium.Type, (Type{Gallium.JuliaStackFrame}, Gallium.Module, String, UInt64, UInt64, Base.GMP.BigInt, LambdaInfo, Base.Dict{Any, Any}, ASTInterpreter.Environment,))
    precompile(Gallium.step_first!, (Gallium.X86_64.BasicRegs,))
    precompile(Gallium.matches_condition, (ASTInterpreter.Interpreter, Expr,))
    precompile(Gallium.search_linetab, (DWARF.LineTableSupport.LineTable, UInt64,))
    precompile(Gallium.make_fdetab, (UInt64, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(Gallium.Hooking.Type, (Type{Gallium.Hooking.Hook}, Ptr{Void}, Array{UInt8, 1}, Any,))
    precompile(Gallium.find_ehframes, (MachO.Sections,))
    precompile(Gallium.Hooking.mach_check, (UInt32,))
    precompile(Gallium.Unwinder.fetch_cfi_value, (Gallium.LocalSession, Gallium.X86_64.BasicRegs, DWARF.CallFrameInfo.Offset, Gallium.RemotePtr{Void},))
    precompile(Gallium.method_tracer, (Ptr{Void},))
    precompile(Gallium.Hooking.mach_vm_protect, (Gallium.Hooking.MemoryRegion, UInt8,))
    precompile(Gallium.Unwinder.probably_in_entrypoint, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, UInt64,))
    precompile(Gallium.breakpoint, (Any, DataType,))
    precompile(Gallium.handle, (Gallium.Module,))
    precompile(Gallium.Hooking.__init__, ())
    precompile(Gallium.convert, (Type{UInt64}, Gallium.RemotePtr{Void},))
    precompile(Gallium.Registers.convert, (Type{Gallium.Registers.RegisterValue{UInt64}}, UInt64,))
    precompile(Gallium.Type, (Type{Gallium.Module}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}}, Array{Tuple{Int64, UInt64}, 1},))
    precompile(Gallium.Type, (Type{Gallium.CStackFrame}, Ptr{Void}, String, Int64, Bool,))
    precompile(Gallium.rebreak_tracer, (Ptr{Void},))
    precompile(Gallium._breakpoint_concrete, (Gallium.Breakpoint, DataType,))
    precompile(Gallium.Hooking.hook_asm_template, (Ptr{Ptr{UInt8}},))
    precompile(Gallium.obtain_dsym, (String, MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(Gallium.Type, (Type{Gallium.MethSource}, Gallium.Breakpoint, DataType, Any, Any,))
    precompile(Gallium.heap_validate, (Ptr{Void},))
    precompile(Gallium.compute_nlines, (Method,))
    precompile(Gallium.Hooking.callback, (Ptr{Void},))
    precompile(Gallium.Unwinder.get_word, (Gallium.LocalSession, Gallium.RemotePtr{Void},))
    precompile(Gallium.add_meth_to_bp!, (Gallium.Breakpoint, Method, Any,))
    precompile(Gallium._breakpoint_spec, (LambdaInfo, Gallium.Breakpoint,))
    precompile(Gallium.arm_breakfile, ())
    precompile(Gallium.register_meth, (Method,))
    precompile(Gallium.enable, (Gallium.Breakpoint, Gallium.Location,))
    precompile(Gallium.dhandle, (Gallium.Module,))
    precompile(Gallium.obtain_uuid, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(Gallium.fire, (Gallium.SpecSource, LambdaInfo,))
    precompile(Gallium.first_actual_segment, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(Gallium.Hooking.region_to_array, (Gallium.Hooking.MemoryRegion,))
    precompile(Gallium.add_location, (Gallium.Breakpoint, Gallium.Location,))
    precompile(Gallium.find_ehframes, (MachO.MachOHandle{Base.AbstractIOBuffer{Array{UInt8, 1}}},))
    precompile(Gallium.fire, (Gallium.FileLineSource, Method,))
    precompile(Gallium.add_meth_to_bp!, (Gallium.Breakpoint, Method,))
    precompile(Gallium.__init__, ())
end
