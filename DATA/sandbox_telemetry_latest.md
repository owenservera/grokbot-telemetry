# sandbox_telemetry_parse — 2026-11-09 14:33:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=698663 lines=1552
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1543 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 1543} |
| `chromeGpuPssKb` | {'int': 1543} |
| `chromeOtherPssKb` | {'int': 1543} |
| `chromeProcesses` | {'int': 1543} |
| `chromeProfiles` | {'int': 1543} |
| `chromeRendererMaxPssKb` | {'int': 1543} |
| `chromeRendererPssKb` | {'int': 1543} |
| `chromeRenderers` | {'int': 1543} |
| `chromeTabs` | {'int': 1543} |
| `chromeTabsProbedProfiles` | {'int': 1543} |
| `chromeUtilityPssKb` | {'int': 1543} |
| `desktopPssKb` | {'int': 1543} |
| `hostPssKb` | {'int': 1543} |
| `kind` | {'str': 1543} |
| `memAvailableKb` | {'int': 1543} |
| `memTotalKb` | {'int': 1543} |
| `otherPssKb` | {'int': 1543} |
| `processes` | {'int': 1543} |
| `pssFallbackProcesses` | {'int': 1543} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
