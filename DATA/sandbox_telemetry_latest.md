# sandbox_telemetry_parse — 2026-10-15 07:14:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=730802 lines=1621
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1616 |
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
| `chromeBrowserPssKb` | {'int': 1616} |
| `chromeGpuPssKb` | {'int': 1616} |
| `chromeOtherPssKb` | {'int': 1616} |
| `chromeProcesses` | {'int': 1616} |
| `chromeProfiles` | {'int': 1616} |
| `chromeRendererMaxPssKb` | {'int': 1616} |
| `chromeRendererPssKb` | {'int': 1616} |
| `chromeRenderers` | {'int': 1616} |
| `chromeTabs` | {'int': 1616} |
| `chromeTabsProbedProfiles` | {'int': 1616} |
| `chromeUtilityPssKb` | {'int': 1616} |
| `desktopPssKb` | {'int': 1616} |
| `hostPssKb` | {'int': 1616} |
| `kind` | {'str': 1616} |
| `memAvailableKb` | {'int': 1616} |
| `memTotalKb` | {'int': 1616} |
| `otherPssKb` | {'int': 1616} |
| `processes` | {'int': 1616} |
| `pssFallbackProcesses` | {'int': 1616} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
