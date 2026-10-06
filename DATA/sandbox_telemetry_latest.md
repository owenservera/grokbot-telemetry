# sandbox_telemetry_parse — 2026-10-06 04:34:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=154778 lines=344
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 339 |
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
| `chromeBrowserPssKb` | {'int': 339} |
| `chromeGpuPssKb` | {'int': 339} |
| `chromeOtherPssKb` | {'int': 339} |
| `chromeProcesses` | {'int': 339} |
| `chromeProfiles` | {'int': 339} |
| `chromeRendererMaxPssKb` | {'int': 339} |
| `chromeRendererPssKb` | {'int': 339} |
| `chromeRenderers` | {'int': 339} |
| `chromeTabs` | {'int': 339} |
| `chromeTabsProbedProfiles` | {'int': 339} |
| `chromeUtilityPssKb` | {'int': 339} |
| `desktopPssKb` | {'int': 339} |
| `hostPssKb` | {'int': 339} |
| `kind` | {'str': 339} |
| `memAvailableKb` | {'int': 339} |
| `memTotalKb` | {'int': 339} |
| `otherPssKb` | {'int': 339} |
| `processes` | {'int': 339} |
| `pssFallbackProcesses` | {'int': 339} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
