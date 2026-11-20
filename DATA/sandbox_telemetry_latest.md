# sandbox_telemetry_parse — 2026-11-20 02:41:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1543034 lines=3421
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3410 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3410} |
| `chromeGpuPssKb` | {'int': 3410} |
| `chromeOtherPssKb` | {'int': 3410} |
| `chromeProcesses` | {'int': 3410} |
| `chromeProfiles` | {'int': 3410} |
| `chromeRendererMaxPssKb` | {'int': 3410} |
| `chromeRendererPssKb` | {'int': 3410} |
| `chromeRenderers` | {'int': 3410} |
| `chromeTabs` | {'int': 3410} |
| `chromeTabsProbedProfiles` | {'int': 3410} |
| `chromeUtilityPssKb` | {'int': 3410} |
| `desktopPssKb` | {'int': 3410} |
| `hostPssKb` | {'int': 3410} |
| `kind` | {'str': 3410} |
| `memAvailableKb` | {'int': 3410} |
| `memTotalKb` | {'int': 3410} |
| `otherPssKb` | {'int': 3410} |
| `processes` | {'int': 3410} |
| `pssFallbackProcesses` | {'int': 3410} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
