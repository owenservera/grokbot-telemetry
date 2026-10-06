# sandbox_telemetry_parse — 2026-10-06 04:39:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=157058 lines=349
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 344 |
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
| `chromeBrowserPssKb` | {'int': 344} |
| `chromeGpuPssKb` | {'int': 344} |
| `chromeOtherPssKb` | {'int': 344} |
| `chromeProcesses` | {'int': 344} |
| `chromeProfiles` | {'int': 344} |
| `chromeRendererMaxPssKb` | {'int': 344} |
| `chromeRendererPssKb` | {'int': 344} |
| `chromeRenderers` | {'int': 344} |
| `chromeTabs` | {'int': 344} |
| `chromeTabsProbedProfiles` | {'int': 344} |
| `chromeUtilityPssKb` | {'int': 344} |
| `desktopPssKb` | {'int': 344} |
| `hostPssKb` | {'int': 344} |
| `kind` | {'str': 344} |
| `memAvailableKb` | {'int': 344} |
| `memTotalKb` | {'int': 344} |
| `otherPssKb` | {'int': 344} |
| `processes` | {'int': 344} |
| `pssFallbackProcesses` | {'int': 344} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
