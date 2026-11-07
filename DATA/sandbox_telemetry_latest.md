# sandbox_telemetry_parse — 2026-11-07 03:34:31 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=293382 lines=656
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 647 |
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
| `chromeBrowserPssKb` | {'int': 647} |
| `chromeGpuPssKb` | {'int': 647} |
| `chromeOtherPssKb` | {'int': 647} |
| `chromeProcesses` | {'int': 647} |
| `chromeProfiles` | {'int': 647} |
| `chromeRendererMaxPssKb` | {'int': 647} |
| `chromeRendererPssKb` | {'int': 647} |
| `chromeRenderers` | {'int': 647} |
| `chromeTabs` | {'int': 647} |
| `chromeTabsProbedProfiles` | {'int': 647} |
| `chromeUtilityPssKb` | {'int': 647} |
| `desktopPssKb` | {'int': 647} |
| `hostPssKb` | {'int': 647} |
| `kind` | {'str': 647} |
| `memAvailableKb` | {'int': 647} |
| `memTotalKb` | {'int': 647} |
| `otherPssKb` | {'int': 647} |
| `processes` | {'int': 647} |
| `pssFallbackProcesses` | {'int': 647} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
