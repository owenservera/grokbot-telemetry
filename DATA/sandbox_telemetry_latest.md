# sandbox_telemetry_parse — 2026-11-25 14:52:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2800391 lines=6204
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6189 |
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
| `chromeBrowserPssKb` | {'int': 6189} |
| `chromeGpuPssKb` | {'int': 6189} |
| `chromeOtherPssKb` | {'int': 6189} |
| `chromeProcesses` | {'int': 6189} |
| `chromeProfiles` | {'int': 6189} |
| `chromeRendererMaxPssKb` | {'int': 6189} |
| `chromeRendererPssKb` | {'int': 6189} |
| `chromeRenderers` | {'int': 6189} |
| `chromeTabs` | {'int': 6189} |
| `chromeTabsProbedProfiles` | {'int': 6189} |
| `chromeUtilityPssKb` | {'int': 6189} |
| `desktopPssKb` | {'int': 6189} |
| `hostPssKb` | {'int': 6189} |
| `kind` | {'str': 6189} |
| `memAvailableKb` | {'int': 6189} |
| `memTotalKb` | {'int': 6189} |
| `otherPssKb` | {'int': 6189} |
| `processes` | {'int': 6189} |
| `pssFallbackProcesses` | {'int': 6189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
