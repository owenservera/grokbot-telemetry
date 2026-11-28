# sandbox_telemetry_parse — 2026-11-28 17:47:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=991035 lines=2197
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2189 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 2189} |
| `chromeGpuPssKb` | {'int': 2189} |
| `chromeOtherPssKb` | {'int': 2189} |
| `chromeProcesses` | {'int': 2189} |
| `chromeProfiles` | {'int': 2189} |
| `chromeRendererMaxPssKb` | {'int': 2189} |
| `chromeRendererPssKb` | {'int': 2189} |
| `chromeRenderers` | {'int': 2189} |
| `chromeTabs` | {'int': 2189} |
| `chromeTabsProbedProfiles` | {'int': 2189} |
| `chromeUtilityPssKb` | {'int': 2189} |
| `desktopPssKb` | {'int': 2189} |
| `hostPssKb` | {'int': 2189} |
| `kind` | {'str': 2189} |
| `memAvailableKb` | {'int': 2189} |
| `memTotalKb` | {'int': 2189} |
| `otherPssKb` | {'int': 2189} |
| `processes` | {'int': 2189} |
| `pssFallbackProcesses` | {'int': 2189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
