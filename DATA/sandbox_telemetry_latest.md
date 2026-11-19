# sandbox_telemetry_parse — 2026-11-19 21:12:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1443115 lines=3200
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3189 |
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
| `chromeBrowserPssKb` | {'int': 3189} |
| `chromeGpuPssKb` | {'int': 3189} |
| `chromeOtherPssKb` | {'int': 3189} |
| `chromeProcesses` | {'int': 3189} |
| `chromeProfiles` | {'int': 3189} |
| `chromeRendererMaxPssKb` | {'int': 3189} |
| `chromeRendererPssKb` | {'int': 3189} |
| `chromeRenderers` | {'int': 3189} |
| `chromeTabs` | {'int': 3189} |
| `chromeTabsProbedProfiles` | {'int': 3189} |
| `chromeUtilityPssKb` | {'int': 3189} |
| `desktopPssKb` | {'int': 3189} |
| `hostPssKb` | {'int': 3189} |
| `kind` | {'str': 3189} |
| `memAvailableKb` | {'int': 3189} |
| `memTotalKb` | {'int': 3189} |
| `otherPssKb` | {'int': 3189} |
| `processes` | {'int': 3189} |
| `pssFallbackProcesses` | {'int': 3189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
