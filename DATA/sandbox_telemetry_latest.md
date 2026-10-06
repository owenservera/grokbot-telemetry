# sandbox_telemetry_parse — 2026-10-06 15:46:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=457562 lines=1008
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1003 |
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
| `chromeBrowserPssKb` | {'int': 1003} |
| `chromeGpuPssKb` | {'int': 1003} |
| `chromeOtherPssKb` | {'int': 1003} |
| `chromeProcesses` | {'int': 1003} |
| `chromeProfiles` | {'int': 1003} |
| `chromeRendererMaxPssKb` | {'int': 1003} |
| `chromeRendererPssKb` | {'int': 1003} |
| `chromeRenderers` | {'int': 1003} |
| `chromeTabs` | {'int': 1003} |
| `chromeTabsProbedProfiles` | {'int': 1003} |
| `chromeUtilityPssKb` | {'int': 1003} |
| `desktopPssKb` | {'int': 1003} |
| `hostPssKb` | {'int': 1003} |
| `kind` | {'str': 1003} |
| `memAvailableKb` | {'int': 1003} |
| `memTotalKb` | {'int': 1003} |
| `otherPssKb` | {'int': 1003} |
| `processes` | {'int': 1003} |
| `pssFallbackProcesses` | {'int': 1003} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
