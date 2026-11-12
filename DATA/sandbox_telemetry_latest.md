# sandbox_telemetry_parse — 2026-11-12 08:21:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2040852 lines=4518
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4509 |
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
| `chromeBrowserPssKb` | {'int': 4509} |
| `chromeGpuPssKb` | {'int': 4509} |
| `chromeOtherPssKb` | {'int': 4509} |
| `chromeProcesses` | {'int': 4509} |
| `chromeProfiles` | {'int': 4509} |
| `chromeRendererMaxPssKb` | {'int': 4509} |
| `chromeRendererPssKb` | {'int': 4509} |
| `chromeRenderers` | {'int': 4509} |
| `chromeTabs` | {'int': 4509} |
| `chromeTabsProbedProfiles` | {'int': 4509} |
| `chromeUtilityPssKb` | {'int': 4509} |
| `desktopPssKb` | {'int': 4509} |
| `hostPssKb` | {'int': 4509} |
| `kind` | {'str': 4509} |
| `memAvailableKb` | {'int': 4509} |
| `memTotalKb` | {'int': 4509} |
| `otherPssKb` | {'int': 4509} |
| `processes` | {'int': 4509} |
| `pssFallbackProcesses` | {'int': 4509} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
