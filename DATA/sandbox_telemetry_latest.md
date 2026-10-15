# sandbox_telemetry_parse — 2026-10-15 06:34:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=713626 lines=1583
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1578 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1578} |
| `chromeGpuPssKb` | {'int': 1578} |
| `chromeOtherPssKb` | {'int': 1578} |
| `chromeProcesses` | {'int': 1578} |
| `chromeProfiles` | {'int': 1578} |
| `chromeRendererMaxPssKb` | {'int': 1578} |
| `chromeRendererPssKb` | {'int': 1578} |
| `chromeRenderers` | {'int': 1578} |
| `chromeTabs` | {'int': 1578} |
| `chromeTabsProbedProfiles` | {'int': 1578} |
| `chromeUtilityPssKb` | {'int': 1578} |
| `desktopPssKb` | {'int': 1578} |
| `hostPssKb` | {'int': 1578} |
| `kind` | {'str': 1578} |
| `memAvailableKb` | {'int': 1578} |
| `memTotalKb` | {'int': 1578} |
| `otherPssKb` | {'int': 1578} |
| `processes` | {'int': 1578} |
| `pssFallbackProcesses` | {'int': 1578} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
