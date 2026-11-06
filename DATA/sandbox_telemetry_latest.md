# sandbox_telemetry_parse — 2026-11-06 17:33:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=86195 lines=198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 189 |
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
| `chromeBrowserPssKb` | {'int': 189} |
| `chromeGpuPssKb` | {'int': 189} |
| `chromeOtherPssKb` | {'int': 189} |
| `chromeProcesses` | {'int': 189} |
| `chromeProfiles` | {'int': 189} |
| `chromeRendererMaxPssKb` | {'int': 189} |
| `chromeRendererPssKb` | {'int': 189} |
| `chromeRenderers` | {'int': 189} |
| `chromeTabs` | {'int': 189} |
| `chromeTabsProbedProfiles` | {'int': 189} |
| `chromeUtilityPssKb` | {'int': 189} |
| `desktopPssKb` | {'int': 189} |
| `hostPssKb` | {'int': 189} |
| `kind` | {'str': 189} |
| `memAvailableKb` | {'int': 189} |
| `memTotalKb` | {'int': 189} |
| `otherPssKb` | {'int': 189} |
| `processes` | {'int': 189} |
| `pssFallbackProcesses` | {'int': 189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
