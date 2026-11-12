# sandbox_telemetry_parse — 2026-11-12 22:14:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2348728 lines=5198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5189 |
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
| `chromeBrowserPssKb` | {'int': 5189} |
| `chromeGpuPssKb` | {'int': 5189} |
| `chromeOtherPssKb` | {'int': 5189} |
| `chromeProcesses` | {'int': 5189} |
| `chromeProfiles` | {'int': 5189} |
| `chromeRendererMaxPssKb` | {'int': 5189} |
| `chromeRendererPssKb` | {'int': 5189} |
| `chromeRenderers` | {'int': 5189} |
| `chromeTabs` | {'int': 5189} |
| `chromeTabsProbedProfiles` | {'int': 5189} |
| `chromeUtilityPssKb` | {'int': 5189} |
| `desktopPssKb` | {'int': 5189} |
| `hostPssKb` | {'int': 5189} |
| `kind` | {'str': 5189} |
| `memAvailableKb` | {'int': 5189} |
| `memTotalKb` | {'int': 5189} |
| `otherPssKb` | {'int': 5189} |
| `processes` | {'int': 5189} |
| `pssFallbackProcesses` | {'int': 5189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
