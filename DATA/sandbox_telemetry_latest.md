# sandbox_telemetry_parse — 2026-11-24 16:24:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2356646 lines=5223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5208 |
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
| `chromeBrowserPssKb` | {'int': 5208} |
| `chromeGpuPssKb` | {'int': 5208} |
| `chromeOtherPssKb` | {'int': 5208} |
| `chromeProcesses` | {'int': 5208} |
| `chromeProfiles` | {'int': 5208} |
| `chromeRendererMaxPssKb` | {'int': 5208} |
| `chromeRendererPssKb` | {'int': 5208} |
| `chromeRenderers` | {'int': 5208} |
| `chromeTabs` | {'int': 5208} |
| `chromeTabsProbedProfiles` | {'int': 5208} |
| `chromeUtilityPssKb` | {'int': 5208} |
| `desktopPssKb` | {'int': 5208} |
| `hostPssKb` | {'int': 5208} |
| `kind` | {'str': 5208} |
| `memAvailableKb` | {'int': 5208} |
| `memTotalKb` | {'int': 5208} |
| `otherPssKb` | {'int': 5208} |
| `processes` | {'int': 5208} |
| `pssFallbackProcesses` | {'int': 5208} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
