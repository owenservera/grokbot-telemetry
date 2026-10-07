# sandbox_telemetry_parse — 2026-10-07 15:15:44 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1094317 lines=2404
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2399 |
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
| `chromeBrowserPssKb` | {'int': 2399} |
| `chromeGpuPssKb` | {'int': 2399} |
| `chromeOtherPssKb` | {'int': 2399} |
| `chromeProcesses` | {'int': 2399} |
| `chromeProfiles` | {'int': 2399} |
| `chromeRendererMaxPssKb` | {'int': 2399} |
| `chromeRendererPssKb` | {'int': 2399} |
| `chromeRenderers` | {'int': 2399} |
| `chromeTabs` | {'int': 2399} |
| `chromeTabsProbedProfiles` | {'int': 2399} |
| `chromeUtilityPssKb` | {'int': 2399} |
| `desktopPssKb` | {'int': 2399} |
| `hostPssKb` | {'int': 2399} |
| `kind` | {'str': 2399} |
| `memAvailableKb` | {'int': 2399} |
| `memTotalKb` | {'int': 2399} |
| `otherPssKb` | {'int': 2399} |
| `processes` | {'int': 2399} |
| `pssFallbackProcesses` | {'int': 2399} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
