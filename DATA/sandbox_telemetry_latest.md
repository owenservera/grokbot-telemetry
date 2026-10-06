# sandbox_telemetry_parse — 2026-10-06 03:32:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=126506 lines=282
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 277 |
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
| `chromeBrowserPssKb` | {'int': 277} |
| `chromeGpuPssKb` | {'int': 277} |
| `chromeOtherPssKb` | {'int': 277} |
| `chromeProcesses` | {'int': 277} |
| `chromeProfiles` | {'int': 277} |
| `chromeRendererMaxPssKb` | {'int': 277} |
| `chromeRendererPssKb` | {'int': 277} |
| `chromeRenderers` | {'int': 277} |
| `chromeTabs` | {'int': 277} |
| `chromeTabsProbedProfiles` | {'int': 277} |
| `chromeUtilityPssKb` | {'int': 277} |
| `desktopPssKb` | {'int': 277} |
| `hostPssKb` | {'int': 277} |
| `kind` | {'str': 277} |
| `memAvailableKb` | {'int': 277} |
| `memTotalKb` | {'int': 277} |
| `otherPssKb` | {'int': 277} |
| `processes` | {'int': 277} |
| `pssFallbackProcesses` | {'int': 277} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
