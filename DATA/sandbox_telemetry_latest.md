# sandbox_telemetry_parse — 2026-10-06 18:53:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=542378 lines=1194
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1189 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1189} |
| `chromeGpuPssKb` | {'int': 1189} |
| `chromeOtherPssKb` | {'int': 1189} |
| `chromeProcesses` | {'int': 1189} |
| `chromeProfiles` | {'int': 1189} |
| `chromeRendererMaxPssKb` | {'int': 1189} |
| `chromeRendererPssKb` | {'int': 1189} |
| `chromeRenderers` | {'int': 1189} |
| `chromeTabs` | {'int': 1189} |
| `chromeTabsProbedProfiles` | {'int': 1189} |
| `chromeUtilityPssKb` | {'int': 1189} |
| `desktopPssKb` | {'int': 1189} |
| `hostPssKb` | {'int': 1189} |
| `kind` | {'str': 1189} |
| `memAvailableKb` | {'int': 1189} |
| `memTotalKb` | {'int': 1189} |
| `otherPssKb` | {'int': 1189} |
| `processes` | {'int': 1189} |
| `pssFallbackProcesses` | {'int': 1189} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
