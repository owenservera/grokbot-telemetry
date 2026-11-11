# sandbox_telemetry_parse — 2026-11-12 00:47:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1896052 lines=4198
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4189 |
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
| `chromeBrowserPssKb` | {'int': 4189} |
| `chromeGpuPssKb` | {'int': 4189} |
| `chromeOtherPssKb` | {'int': 4189} |
| `chromeProcesses` | {'int': 4189} |
| `chromeProfiles` | {'int': 4189} |
| `chromeRendererMaxPssKb` | {'int': 4189} |
| `chromeRendererPssKb` | {'int': 4189} |
| `chromeRenderers` | {'int': 4189} |
| `chromeTabs` | {'int': 4189} |
| `chromeTabsProbedProfiles` | {'int': 4189} |
| `chromeUtilityPssKb` | {'int': 4189} |
| `desktopPssKb` | {'int': 4189} |
| `hostPssKb` | {'int': 4189} |
| `kind` | {'str': 4189} |
| `memAvailableKb` | {'int': 4189} |
| `memTotalKb` | {'int': 4189} |
| `otherPssKb` | {'int': 4189} |
| `processes` | {'int': 4189} |
| `pssFallbackProcesses` | {'int': 4189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
