# sandbox_telemetry_parse — 2026-11-12 01:28:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1909642 lines=4228
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4219 |
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
| `chromeBrowserPssKb` | {'int': 4219} |
| `chromeGpuPssKb` | {'int': 4219} |
| `chromeOtherPssKb` | {'int': 4219} |
| `chromeProcesses` | {'int': 4219} |
| `chromeProfiles` | {'int': 4219} |
| `chromeRendererMaxPssKb` | {'int': 4219} |
| `chromeRendererPssKb` | {'int': 4219} |
| `chromeRenderers` | {'int': 4219} |
| `chromeTabs` | {'int': 4219} |
| `chromeTabsProbedProfiles` | {'int': 4219} |
| `chromeUtilityPssKb` | {'int': 4219} |
| `desktopPssKb` | {'int': 4219} |
| `hostPssKb` | {'int': 4219} |
| `kind` | {'str': 4219} |
| `memAvailableKb` | {'int': 4219} |
| `memTotalKb` | {'int': 4219} |
| `otherPssKb` | {'int': 4219} |
| `processes` | {'int': 4219} |
| `pssFallbackProcesses` | {'int': 4219} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
