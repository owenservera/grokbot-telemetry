# sandbox_telemetry_parse — 2026-11-19 08:02:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1179612 lines=2616
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2607 |
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
| `chromeBrowserPssKb` | {'int': 2607} |
| `chromeGpuPssKb` | {'int': 2607} |
| `chromeOtherPssKb` | {'int': 2607} |
| `chromeProcesses` | {'int': 2607} |
| `chromeProfiles` | {'int': 2607} |
| `chromeRendererMaxPssKb` | {'int': 2607} |
| `chromeRendererPssKb` | {'int': 2607} |
| `chromeRenderers` | {'int': 2607} |
| `chromeTabs` | {'int': 2607} |
| `chromeTabsProbedProfiles` | {'int': 2607} |
| `chromeUtilityPssKb` | {'int': 2607} |
| `desktopPssKb` | {'int': 2607} |
| `hostPssKb` | {'int': 2607} |
| `kind` | {'str': 2607} |
| `memAvailableKb` | {'int': 2607} |
| `memTotalKb` | {'int': 2607} |
| `otherPssKb` | {'int': 2607} |
| `processes` | {'int': 2607} |
| `pssFallbackProcesses` | {'int': 2607} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
