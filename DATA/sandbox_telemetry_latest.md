# sandbox_telemetry_parse — 2026-11-25 00:01:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2508269 lines=5558
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5543 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5543} |
| `chromeGpuPssKb` | {'int': 5543} |
| `chromeOtherPssKb` | {'int': 5543} |
| `chromeProcesses` | {'int': 5543} |
| `chromeProfiles` | {'int': 5543} |
| `chromeRendererMaxPssKb` | {'int': 5543} |
| `chromeRendererPssKb` | {'int': 5543} |
| `chromeRenderers` | {'int': 5543} |
| `chromeTabs` | {'int': 5543} |
| `chromeTabsProbedProfiles` | {'int': 5543} |
| `chromeUtilityPssKb` | {'int': 5543} |
| `desktopPssKb` | {'int': 5543} |
| `hostPssKb` | {'int': 5543} |
| `kind` | {'str': 5543} |
| `memAvailableKb` | {'int': 5543} |
| `memTotalKb` | {'int': 5543} |
| `otherPssKb` | {'int': 5543} |
| `processes` | {'int': 5543} |
| `pssFallbackProcesses` | {'int': 5543} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
