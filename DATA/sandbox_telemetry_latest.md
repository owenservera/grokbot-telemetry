# sandbox_telemetry_parse — 2026-11-10 14:10:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1174745 lines=2604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2595 |
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
| `chromeBrowserPssKb` | {'int': 2595} |
| `chromeGpuPssKb` | {'int': 2595} |
| `chromeOtherPssKb` | {'int': 2595} |
| `chromeProcesses` | {'int': 2595} |
| `chromeProfiles` | {'int': 2595} |
| `chromeRendererMaxPssKb` | {'int': 2595} |
| `chromeRendererPssKb` | {'int': 2595} |
| `chromeRenderers` | {'int': 2595} |
| `chromeTabs` | {'int': 2595} |
| `chromeTabsProbedProfiles` | {'int': 2595} |
| `chromeUtilityPssKb` | {'int': 2595} |
| `desktopPssKb` | {'int': 2595} |
| `hostPssKb` | {'int': 2595} |
| `kind` | {'str': 2595} |
| `memAvailableKb` | {'int': 2595} |
| `memTotalKb` | {'int': 2595} |
| `otherPssKb` | {'int': 2595} |
| `processes` | {'int': 2595} |
| `pssFallbackProcesses` | {'int': 2595} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
