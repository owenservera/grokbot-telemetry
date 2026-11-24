# sandbox_telemetry_parse — 2026-11-24 03:00:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2101115 lines=4658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4643 |
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
| `chromeBrowserPssKb` | {'int': 4643} |
| `chromeGpuPssKb` | {'int': 4643} |
| `chromeOtherPssKb` | {'int': 4643} |
| `chromeProcesses` | {'int': 4643} |
| `chromeProfiles` | {'int': 4643} |
| `chromeRendererMaxPssKb` | {'int': 4643} |
| `chromeRendererPssKb` | {'int': 4643} |
| `chromeRenderers` | {'int': 4643} |
| `chromeTabs` | {'int': 4643} |
| `chromeTabsProbedProfiles` | {'int': 4643} |
| `chromeUtilityPssKb` | {'int': 4643} |
| `desktopPssKb` | {'int': 4643} |
| `hostPssKb` | {'int': 4643} |
| `kind` | {'str': 4643} |
| `memAvailableKb` | {'int': 4643} |
| `memTotalKb` | {'int': 4643} |
| `otherPssKb` | {'int': 4643} |
| `processes` | {'int': 4643} |
| `pssFallbackProcesses` | {'int': 4643} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
